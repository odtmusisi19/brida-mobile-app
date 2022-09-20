// ignore: file_names
import "package:flutter/material.dart";

Widget profileBadan(String setTitle, String setWord, String setVisiMisi) {
  return SliverToBoxAdapter(
      child: Wrap(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          constraints: const BoxConstraints(maxHeight: double.infinity),
          color: Colors.white,
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/profil.jpg")),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  setTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  setWord,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Visi - Misi BRIDA Provinsi NTB :",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  setVisiMisi,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.home),
                    Icon(Icons.home),
                    Icon(Icons.home),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Tugas dan Fungsi Pokok Brida",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 21.5,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Peraturan Gubernur Nomor 49 Tahun 2021 tentang Perubahan Ke Empat Atas Peraturan Gubernur Nomor 51 Tahun 2016 tentang Kedudukan, Susunan Organisasi, Tugas Dan Fungsi Serta Tata Kerja Badan-Badan Daerah Provinsi Nusa Tenggara Barat, serta Peraturan Daerah Nomor. 14 Tahun 2021 tentang perubahan kedua atas Peraturan daeran Nomor 11 Tahun 2016, kedudukan Badan Riset dan Inovasi Daerah (BRIDA) Provinsi NTB mempunyai tugas membantu Gubernur dalam melaksanakan tugas urusan fungsi penunjang urusan pemerintahan bidang Penelitian dan Pengembangan",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ));
}

Widget tableProfiles() {
  return DataTable(
    dataRowHeight: 35,
    columnSpacing: 5,
    // border: TableBorder.all(),
    dividerThickness: 0,
    dataTextStyle: const TextStyle(fontSize: 15, color: Colors.black),
    columns: const [
      DataColumn(label: Text(' ')),
      DataColumn(label: Text(' ')),
    ],
    rows: const [
      DataRow(cells: [
        DataCell(Text('Nama')),
        DataCell(
          Text(':	Lalu Suryadi S. SP.MM.'),
        ),
      ]),
      DataRow(cells: [
        DataCell(Text('NIP')),
        DataCell(Text(':	196912311998031055')),
      ]),
      DataRow(cells: [
        DataCell(Text('Tempat, Tanggal Lahir')),
        DataCell(Text(':	Lombok Timur, 31 Desember  1969')),
      ]),
      DataRow(cells: [
        DataCell(Text('Jenis Kelamin')),
        DataCell(Text(':	Laki-Laki')),
      ]),
      DataRow(cells: [
        DataCell(Text('Email')),
        DataCell(Text(':	layadhie@yahoo.co.id')),
      ]),
      DataRow(cells: [
        DataCell(Text('Pangkat')),
        DataCell(Text(':	Pembina Tingkat I / IV b')),
      ]),
    ],
  );
}

Widget riwayatJabatan() {
  return DataTable(
    dataRowHeight: 75,
    columnSpacing: 5,
    // border: TableBorder.all(),
    dividerThickness: 0,
    dataTextStyle: const TextStyle(fontSize: 15, color: Colors.black),
    columns: const [
      DataColumn(label: Text(' ')),
      DataColumn(label: Text(' ')),
    ],
    rows: const [
      DataRow(cells: [
        DataCell(Text(
          '1. ',
        )),
        DataCell(
          Text(
              'Kepala Sub Bidang Penyusunan Rencana Kegiatan BAPPEDA Kab. Sumbawa (2003)'),
        ),
      ]),
      DataRow(cells: [
        DataCell(Text('2. ')),
        DataCell(Text(
            'Kepala Sub Bidang Pengkajian Strategis BAPPEDA Kab. Sumbawa (2005)')),
      ]),
      DataRow(cells: [
        DataCell(Text('3. ')),
        DataCell(Text(
            'Kasi Geologi dan Tata Lingkungan pada Dinas Pertambangan dan Energi Kab. Sumbawa (2005)')),
      ]),
      DataRow(cells: [
        DataCell(Text('4. ')),
        DataCell(Text(
            'Kasi Pendataan dan Penetapan Pajak Daerah DPKA Kab. Sumbawa (2008)')),
      ]),
      DataRow(cells: [
        DataCell(Text('5. ')),
        DataCell(Text(
            'Kepala Bidang Aset Daerah Dinas Pendapatan Keuangan dan Aset Daerah Kab. Sumbawa (2009)')),
      ]),
      DataRow(cells: [
        DataCell(Text('6. ')),
        DataCell(Text(
            'Kepala Bagian Humas dan Protokol Sekretariat Daerah Kab. Sumbawa (2011)')),
      ]),
    ],
  );
}

List<Map<String, dynamic>> data = [
  {
    "nama": "Ogi darma tena",
    "url": "https://static.zerochan.net/NARUTO.full.1646007.jpg"
  },
  {
    "nama": "Ogi darma tena",
    "url":
        "https://1.bp.blogspot.com/-epA_c6UTv48/XHMGqFA8-GI/AAAAAAAAC3Q/VDSWnPZ2hsQKuw5q91fX7o4OQ0dg3WecQCKgBGAs/w0/sasuke-uchiha-naruto-uzumaki-naruto-anime-4k-uhdpaper.com-10.jpg"
  },
  {
    "nama": "Ogi darma tena",
    "url":
        "http://2.bp.blogspot.com/_WPfEgUlwbpA/TU-McgZO0CI/AAAAAAAAAUY/4rczH_gY8h4/s1600/naruto-shippuden.jpg"
  },
];

List<Widget> list = [Text("data")];
Widget tesje() {
  return Column(
    children: list,
  );
}

Widget profileKepalaBadan() {
  return SliverToBoxAdapter(
      child: Wrap(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          constraints: const BoxConstraints(maxHeight: double.infinity),
          color: Colors.white,
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/profile/pakaban.jpg")),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "H. Wirawan, S.Si., MT.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey[840],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              tesje(),
              tableProfiles(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.home),
                    Icon(Icons.podcasts),
                    Icon(Icons.home),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Riwayat Jabatan :",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
              riwayatJabatan(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Riwayat Pendidikan :",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
              riwayatJabatan()
            ],
          ),
        ),
      ),
    ],
  ));
}
