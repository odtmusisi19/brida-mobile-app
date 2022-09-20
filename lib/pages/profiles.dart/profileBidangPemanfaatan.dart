import 'package:brida/my_widget.dart';
import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/myappbar.dart';
import 'package:flutter/material.dart';

class ProfilBidangPemanfaatan extends StatelessWidget {
  const ProfilBidangPemanfaatan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> IsiData = [
      myAppBar(false, "assets/images/profil.jpg"),
      titleCard("Profile Bidang"),
      sectionJudul(namaSection: "Kepala Bidang Pemanfaatan Riset dan Inovasi"),
      dataGambar(),
      sosmedCard(),
      dataTable(
          showPreviewSingkat: true,
          Jabatan:
              "Kepala Bidang Penelitian Pengembangan Inovasi dan Teknologi",
          nama: "Lale Ira Amrita Sari, ST",
          NIP: "197704142009012004",
          TTL: "Mataram, 14 April 1977",
          Kelamin: "Perempuan",
          Email: "laleiraamritasari@gmail.com",
          Pangkat: "PENATA Tingkat I / III d",
          previewSingkat:
              "Bidang Pemanfaatan Riset dan Inovasi sebagai etalase Iptek dan pusat Inovasi NTB serta Pengelolaan Kawasan Edusiwata Teknologi"),
      dataGambar(setPathAsset: "assets/images/Hendra Apriana.JPG"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan:
              "Kepala Sub Bidang Desiminasi Hasil Inovasi Riset dan Teknologi Wisata Keilmuan dan Teknologi",
          nama: "Hendra Apriana, ST",
          NIP: "198004052009062006",
          TTL: "Selong Lombok Timur, 5 April 1980",
          Kelamin: "Perempuan",
          Email: "eenkahim@gmail.com",
          Pangkat: "Penata Tingkat I / III d",
          previewSingkat: ""),
      dataGambar(setPathAsset: "assets/images/Nurnianingsih.JPG"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan: "Kepala Sub Bidang Eduwisata keilmuan dan teknologi",
          nama: "Nurnianingsih",
          NIP: "197404212008012019",
          TTL: "Mataram, 21 April 1974",
          Kelamin: "Perempuan",
          Email: "ningsasih19@gmail.com",
          Pangkat: "Penata Tingkat I / III d",
          previewSingkat: ""),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 198, 198, 198),
      body: CustomData(ListData: IsiData),
    );
  }
}
