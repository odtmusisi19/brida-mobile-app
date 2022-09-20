import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: {"Content-Type": "application/json"});
  List jsonResponse = json.decode(response.body);
  if (response.statusCode == 200) {
    return jsonResponse.map((job) => Album.fromJson(job)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<List<Album>>(
          future: fetchAlbum(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int i) {
                        return Card(
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.5, color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    snapshot.data![i].id.toString(),
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }));
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
