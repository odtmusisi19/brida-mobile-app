import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';
import 'dart:async';

Widget myAppBar(bool isuseimage, String setGambar) {
  return SliverAppBar(
    backgroundColor: Colors.red[900],
    actions: [
      IconButton(
        icon: const Icon(Icons.mail),
        onPressed: () async {
          final Uri url = Uri.parse('https://www.google.com/');
          if (!await launchUrl(
            url,
            mode: LaunchMode.inAppWebView,
            webViewConfiguration: const WebViewConfiguration(
                headers: <String, String>{'my_header_key': 'my_header_value'}),
          )) {
            throw 'Could not launch $url';
          }
        },
        color: Colors.white,
      )
    ],
    // title: Text("M A T A R A M"),
    // expandedHeight: MediaQuery.of(context).padding.top,
    expandedHeight: isuseimage ? 236 : 0,
    iconTheme: const IconThemeData(color: Colors.white),
    floating: false,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    pinned: true,
    flexibleSpace: isuseimage
        ? FlexibleSpaceBar(
            expandedTitleScale: 1.4,
            background: Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      setGambar,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.black,
                    ],
                        stops: const [
                      0.0,
                      1.0
                    ])),
              )
            ]),
            title: const Text(
              "B R I D A",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          )
        : SizedBox(),
    // title: Text("M A T A R A M"),
  );
}
