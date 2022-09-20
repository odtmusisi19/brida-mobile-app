import 'package:brida/my_widget.dart';
import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/myappbar.dart';
import 'package:flutter/material.dart';

class ProfilBidang extends StatelessWidget {
  const ProfilBidang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Widget> IsiData = [
      myAppBar(false, "assets/images/profil.jpg"),
      titleCard("Profile Bidang"),
      sectionJudul(
          namaSection: "Bidang Penelitian Pengembangan Inovasi dan Teknologi"),
      dataGambar(setPathAsset: "assets/images/suryadi.jpg"),
      sosmedCard(),
      dataTable(
          showPreviewSingkat: true,
          Jabatan:
              "Kepala Bidang Penelitian Pengembangan Inovasi dan Teknologi",
          nama: "Lalu Suryadi S. SP.MM.",
          NIP: "196912311998031055",
          TTL: "Lombok Timur, 31 Desember  1969",
          Kelamin: "Laki-Laki",
          Email: "layadhie@yahoo.co.id",
          Pangkat: "Pembina Tingkat I / IV b",
          previewSingkat:
              "Sebagai Bidang yang memfasilitasi masyarakat dan OPD terkait, Bidang Penelitian, Pengembangan Inovasi dan Teknologi telah berhasil memfasilitasi lebih dari 100 unit Prototype pemesinan dan melakukan kerjasama dengan stakeholder seperti Kedutaan Denmark dan Geo Trash Management."),
      dataGambar(setPathAsset: "assets/images/Mahmud Husyairi.JPG"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan: "Kepala Sub Bidang Penelitian dan Pengembangan",
          nama: "Mahmud Husyairi, SP.",
          NIP: "197110242008011009",
          TTL: "Pohgading, 24 Oktober 1971",
          Kelamin: "Laki-Laki",
          Email: "husyairi71@gmail.com",
          Pangkat: "Penata Tingkat I / III d",
          previewSingkat:
              "Sebagai Bidang yang memfasilitasi masyarakat dan OPD terkait, Bidang Penelitian, Pengembangan Inovasi dan Teknologi telah berhasil memfasilitasi lebih dari 100 unit Prototype pemesinan dan melakukan kerjasama dengan stakeholder seperti Kedutaan Denmark dan Geo Trash Management."),
      dataGambar(setPathAsset: "assets/images/Bu Dhani.jpg"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan: "Kepala Sub Bidang Inovasi dan Teknologi",
          nama: "Baiq Dhani Sufia Hartati, ST",
          NIP: "198008052010012005",
          TTL: "Mantang, 5 Agustus 1980",
          Kelamin: "Perempuan",
          Email: "bq.dhanihartati@gmail.com",
          Pangkat: "Penata Tingkat I / III d",
          previewSingkat: ""),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 198, 198, 198),
      body: CustomData(ListData: IsiData),
    );
  }
}
