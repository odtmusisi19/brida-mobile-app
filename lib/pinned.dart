import 'package:flutter/material.dart';

class Pinned extends StatefulWidget {
  const Pinned({Key? key}) : super(key: key);

  @override
  State<Pinned> createState() => _PinnedState();
}

class _PinnedState extends State<Pinned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/250?image=9"),
              ),
            ),
          ),
        ));
  }
}
