// ignore: file_names
import 'package:brida/my_widget.dart';
import 'package:flutter/material.dart';
import 'customdata.dart';
import 'myappbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Keterangan : jika tidak ingin menggunakan background atau gambar isi
    //               isi paramater Widget myAppBar dengan false dan true
    // jika false, kemudian tambahkan stringn kosong ""
    return CustomData(ListData: [
      myAppBar(false, ""),
      data(
          "https://1.bp.blogspot.com/-e2incq0wSAs/XIgDPqZNM9I/AAAAAAAAAcI/8zFhWVSiR6Qww4m7mZqBNkVDl2M1Fd61QCKgBGAs/w2560-h1440-c/sasuke-naruto-uhdpaper.com-4K-48.jpg"),
      data(
          "https://1.bp.blogspot.com/-epA_c6UTv48/XHMGqFA8-GI/AAAAAAAAC3Q/VDSWnPZ2hsQKuw5q91fX7o4OQ0dg3WecQCKgBGAs/w0/sasuke-uchiha-naruto-uzumaki-naruto-anime-4k-uhdpaper.com-10.jpg"),
      data("https://static.zerochan.net/NARUTO.full.1646007.jpg"),
    ]);
  }
}
