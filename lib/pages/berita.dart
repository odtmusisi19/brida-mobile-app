import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/myappbar.dart';
import 'package:flutter/material.dart';

import '../my_widget.dart';

class Berita extends StatelessWidget {
  const Berita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> ListData = [
      myAppBar(false, "assets/images/profil.jpg"),
      titleCard("Berita Seputar BRIDA provinsi NTB"),
      britaCard("assets/images/berita/berita-1.jpg",
          "BRIDA NTB FASILITASI PEMBENTUKAN KOMUNITAS SEPEDA LISTR"),
      britaCard("assets/images/berita/berita-2.jpg",
          "Asistensi BRIDA NTB Ke Komisi Informasi Provinsi NTB Me . . ."),
      britaCard("assets/images/berita/berita-1.jpg",
          "BRIDA NTB FASILITASI PEMBENTUKAN KOMUNITAS SEPEDA LISTR"),
    ];
    return CustomData(ListData: ListData);
  }
}
