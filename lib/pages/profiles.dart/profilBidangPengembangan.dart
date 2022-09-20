import 'package:brida/my_widget.dart';
import 'package:brida/pages/customdata.dart';
import 'package:brida/pages/myappbar.dart';
import 'package:flutter/material.dart';

class ProfilBidangPengembangan extends StatelessWidget {
  const ProfilBidangPengembangan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> IsiData = [
      myAppBar(false, "assets/images/profil.jpg"),
      titleCard("Profile Bidang"),
      sectionJudul(
          namaSection:
              "Bidang Pengembangan Sumber Daya Ilmu Pengetahuan dan Teknologi"),
      dataGambar(setPathAsset: "assets/images/ahmadMuslim.jpg"),
      sosmedCard(),
      dataTable(
          showPreviewSingkat: true,
          Jabatan:
              "Kepala Bidang Pengembangan Sumber Daya Ilmu Pengetahuan dan Teknologi",
          nama: "Ahmad Muslim, S.Pd",
          NIP: "197605102001121001",
          TTL: "Seganteng, 10 Mei 1976",
          Kelamin: "Laki-Laki",
          Email: "abiygfra@gmail.com",
          Pangkat: "IV b",
          previewSingkat:
              "Program Beasiswa NTB dan Rumah Bahasa merupakan salah satu tugas dari Bidang Pengembangan Sumber Daya Ilmu Pengetahuan dan Teknologi selain memfasilitasi Masyarakat dan OPD terkait dalam Uji kompetensi profesi dan Standarisasi dan Sertifikasi Produk"),
      dataGambar(setPathAsset: "assets/images/orang.JPG"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan: "Kepala Sub Bidang Sertifikasi dan Standarisasi",
          nama: "Husnul Khuluq, S.Si",
          NIP: "198708082011011002",
          TTL: "Pepekat, 8 Agustus 1987",
          Kelamin: "Laki-Laki",
          Email: "khuluq.hasan@gmail.com",
          Pangkat: "Penata TK I/ IIIc",
          previewSingkat: ""),
      dataGambar(setPathAsset: "assets/images/Sri Hastuti.JPG"),
      dataTable(
          showPreviewSingkat: false,
          Jabatan:
              "Kepala Sub Bidang Peningkatan Kapasitas Sumber Daya Ilmu Pengetahuan dan Teknologi",
          nama: "Sri Hastuti Novila Anggraini Saiful, M.Tesol",
          NIP: "199311272019032022",
          TTL: "Lombok Timur, 27 November 1993",
          Kelamin: "Perempuan",
          Email: "srihastutinovila@gmail.com",
          Pangkat: "Penata Muda Tingkat I / III b",
          previewSingkat: ""),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 198, 198, 198),
      body: CustomData(ListData: IsiData),
    );
  }
}
