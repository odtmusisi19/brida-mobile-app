import 'package:flutter/material.dart';
import '../widgets/myCard.dart';
import 'customdata.dart';
import 'myappbar.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Widget> IsiData = [
      myAppBar(false,
          "https://wallpapersmug.com/download/1600x900/654bc4/naruto-sage-boruto-artwork.jpg"),
    ];
    // ignore: todo
    //TODO list kumpulan data
    // ignore: non_constant_identifier_names
    final List<Map<String, dynamic>> Data = [
      {
        "nama": "Ogi darma tena",
        "url": "https://static.zerochan.net/NARUTO.full.1646007.jpg"
      },
      {
        "nama": "Ogi to",
        "url":
            "https://1.bp.blogspot.com/-epA_c6UTv48/XHMGqFA8-GI/AAAAAAAAC3Q/VDSWnPZ2hsQKuw5q91fX7o4OQ0dg3WecQCKgBGAs/w0/sasuke-uchiha-naruto-uzumaki-naruto-anime-4k-uhdpaper.com-10.jpg"
      },
      {
        "nama": "Ogito Uciha",
        "url":
            "http://2.bp.blogspot.com/_WPfEgUlwbpA/TU-McgZO0CI/AAAAAAAAAUY/4rczH_gY8h4/s1600/naruto-shippuden.jpg"
      },
    ];
    Data.map((e) {
      IsiData.add(MyCard(image: e['url'], title: e['nama']));
    }).toList();
    return CustomData(ListData: IsiData);
  }
}
