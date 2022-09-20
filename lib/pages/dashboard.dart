import 'package:brida/my_widget.dart';
import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/myappbar.dart';
import 'package:brida/pages/profiles.dart/profilBidangKemitraan.dart';
import 'package:brida/pages/profiles.dart/profilBidangPengembangan.dart';
import 'package:brida/pages/profiles.dart/profileBidang.dart';
import 'package:brida/pages/profiles.dart/profileBidangPemanfaatan.dart';
import 'package:brida/widgets/cardIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Future<List<dynamic>> fetchAlbum() async {
//   final response = await http.get(
//       Uri.parse('https://jherr-pokemon.s3.us-west-1.amazonaws.com/index.json'),
//       headers: {"Content-Type": "application/json"});
//   List jsonResponse = json.decode(response.body);
//   if (response.statusCode == 200) {
//     return jsonResponse;
//   } else {
//     throw Exception('Failed to load album');
//   }
// }

class Album {
  final int id;
  final String name;
  final String image;

  const Album({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // ignore: non_constant_identifier_names
  // late List<Map<String, dynamic>> mydata;
  // List<Widget> IsiDataSliver = [];

  @override
  // void initState() {
  //   super.initState();
  //   fetchAlbum().then((value) {
  //     setState(() {
  //       // ignore: non_constant_identifier_names
  //       List<Widget> IsiSliverGrid = [];

  //       value.map((e) {
  //         // =============================================================================
  //         // IsiData.add(data(
  //         //     "https://jherr-pokemon.s3.us-west-1.amazonaws.com/${e['image']}"));
  //         // =================================================================================
  //         IsiSliverGrid.add(dataSliverGrid(
  //             "https://jherr-pokemon.s3.us-west-1.amazonaws.com/${e['image']}"));
  //         // ===================================================================================
  //       }).toList();
  //       // IsiData.add(mySliverGrid(IsiSliverGrid));
  //     });
  //   });
  // }

  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    // ignore: todo
    //TODO list kumpulan data
    // ignore: non_constant_identifier_names
    // final List<Map<String, dynamic>> Data = [
    //   {
    //     "nama": "Ogi darma tena",
    //     "url": "https://static.zerochan.net/NARUTO.full.1646007.jpg"
    //   },
    //   {
    //     "nama": "Ogi darma tena",
    //     "url":
    //         "https://1.bp.blogspot.com/-epA_c6UTv48/XHMGqFA8-GI/AAAAAAAAC3Q/VDSWnPZ2hsQKuw5q91fX7o4OQ0dg3WecQCKgBGAs/w0/sasuke-uchiha-naruto-uzumaki-naruto-anime-4k-uhdpaper.com-10.jpg"
    //   },
    //   {
    //     "nama": "Ogi darma tena",
    //     "url":
    //         "http://2.bp.blogspot.com/_WPfEgUlwbpA/TU-McgZO0CI/AAAAAAAAAUY/4rczH_gY8h4/s1600/naruto-shippuden.jpg"
    //   },
    // ];
    List<Widget> IsiData = [
      myAppBar(true, "assets/images/profil.jpg"),
      cardIcon(
        FontAwesomeIcons.solidLightbulb,
        context,
        text: "Kepala Bidang Penelitian Pengembangan Inovasi dan Teknologi"
            .toUpperCase(),
        toPage: const ProfilBidang(),
      ),
      cardIcon(FontAwesomeIcons.microscope, context,
          text: "Kepala Bidang Pemanfaatan Riset dan Inovasi".toUpperCase(),
          toPage: const ProfilBidangPemanfaatan()),
      cardIcon(FontAwesomeIcons.peopleGroup, context,
          text:
              "Kepala Bidang Pengembangan Sumber Daya Ilmu Pengetahuan dan Teknologi"
                  .toUpperCase(),
          toPage: const ProfilBidangPengembangan()),
      cardIcon(
        FontAwesomeIcons.graduationCap,
        context,
        text: "Kepala Bidang Kemitraan dan Inkubasi Bisnis".toUpperCase(),
        toPage: const ProfilBidangKemitraan(),
      ),
      britaCardforBeranda(),
    ];

    return CustomData(ListData: IsiData);
  }
}
