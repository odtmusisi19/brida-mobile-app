import 'package:brida/my_widget.dart';
import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/profiles.dart/profilesWidget.dart';
import "package:flutter/material.dart";

import '../myappbar.dart';

class ProfilBadan extends StatelessWidget {
  // const ProfilBadan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> ListData = [
      myAppBar(false, "assets/images/profil.jpg"),
      titleCard("Profil Badan"),
      profileBadan(
          "Badan Riset dan Inovasi Daerah NTB",
          "BRIDA NTB berkomitmen mewujudkan NTB Sejahtera dan Mandiri, melalui program-program unggulan dan merangkul masyarakat untuk mandiri dengan berkolaborasi.",
          "Tugas BRIDA NTB sebagai penunjang urusan pemerintahan dalam penelitian dan pengembangan merupakan wujud dari kontribusi dalam pencapaian Misi Ke-5 NTB Gemilang yaitu NTB “Sejahtera dan Mandiri” melalui penanggulangan kemiskinan, mengurangi kesenjangan, dan pertumbuhan ekonomi inklusif bertumpu pada pertanian, pariwisata dan industrialisasi."),
    ];
    return CustomData(ListData: ListData);
  }
}
