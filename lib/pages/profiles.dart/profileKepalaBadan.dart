import 'package:brida/my_widget.dart';
import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/myappbar.dart';
import 'package:brida/pages/profiles.dart/profilesWidget.dart';
import 'package:flutter/material.dart';

class ProfileKepalaBadan extends StatelessWidget {
  const ProfileKepalaBadan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> ListData = [
      myAppBar(false, "assets/images/profil.jpg"),
      titleCard("Profil Kepala Badan"),
      profileKepalaBadan(),
    ];
    return CustomData(ListData: ListData);
  }
}
