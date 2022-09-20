// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget cardIcon(IconData icon, BuildContext context, {text, toPage}) {
  return SliverToBoxAdapter(
    child: Center(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => toPage),
            );
          },
          child: Container(
            constraints: const BoxConstraints(maxHeight: double.infinity),
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            // height: 270,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  icon,
                  size: 75,
                  color: Colors.red[900],
                ),
                Text(
                  text ?? "kosong".toUpperCase().toUpperCase(),
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 17, 70, 143),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
