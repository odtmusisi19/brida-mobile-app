import 'package:brida/my_widget.dart';
import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/myappbar.dart';
import 'package:flutter/material.dart';

class ProfilBidangKemitraan extends StatelessWidget {
  const ProfilBidangKemitraan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> IsiData = [
      myAppBar(false, "assets/images/profil.jpg"),
      titleCard("Profile Bidang"),
      sectionJudul(namaSection: "Bidang Kemitraan dan Inkubasi Bisnis"),
      dataGambar(setPathAsset: "assets/images/iskandar.jpg"),
      sosmedCard(),
      dataTable(
          showPreviewSingkat: true,
          Jabatan: "Kepala Bidang Kemitraan dan Inkubasi Bisnis",
          nama: "Iskandar Sukmana",
          NIP: "197903102010011010",
          TTL: "Ganti, 10 Maret 1979",
          Kelamin: "Laki-Laki",
          Email: "anderwalker79@gmail.com",
          Pangkat: "III d",
          previewSingkat:
              "Bidang Kemitraan dan Inkubasi bisnis berkomitmen untuk melayani dan memfasilitasi masyarakat dari mahasiswa, pelajar, guru dan akademisi hingga dunia usaha dalam mengembangkan bisnis melalui Program Inkubasi Bisnis dan Kemitraan."),
      dataGambar(setPathAsset: "assets/images/Bintang Rizki.JPG"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan: "Kepala Sub Bidang Inkubasi Bisnis",
          nama: "BINTANG RIZKI SAKINAH, S.IP",
          NIP: "199406182017082001",
          TTL: "Mataram, 18 Juni 1994",
          Kelamin: "Perempuan",
          Email: "binth13.br@gmail.com",
          Pangkat: "Penata Muda Tingkat I / III b",
          previewSingkat: ""),
      dataGambar(setPathAsset: "assets/images/H. Makbullah.JPG"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan: "Kepala Sub Bidang Kemitraan dan Bisnis Proses",
          nama: "H. Makbullah, M.Pd",
          NIP: "196902091997021006",
          TTL: "Lombok Barat, 9 Februari 1969",
          Kelamin: "Laki-Laki",
          Email: "makbul.latib@gmail.com",
          Pangkat: "Pembina / IV a",
          previewSingkat: ""),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 198, 198, 198),
      body: CustomData(ListData: IsiData),
    );
  }
}
