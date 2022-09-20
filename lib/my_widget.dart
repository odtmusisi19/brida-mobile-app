// ignore_for_file: non_constant_identifier_names
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget data(String image) {
  return SliverToBoxAdapter(
    child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 9,
              fit: BoxFit.fill,
              image: NetworkImage(image),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget mySliverGrid(List<Widget> datasliverGrid) {
  return SliverGrid.count(
    crossAxisCount: 3,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    childAspectRatio: 1 / 1,
    children: datasliverGrid,
  );
}

Widget dataSliverGrid(String image) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          scale: 9,
          fit: BoxFit.fill,
          image: NetworkImage(image),
        ),
      ),
    ),
  );
}

//TODO data tabel
Widget dataTable(
    {Jabatan,
    nama,
    NIP,
    TTL,
    Kelamin,
    Email,
    Pangkat,
    previewSingkat,
    showPreviewSingkat}) {
  return SliverToBoxAdapter(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        constraints: const BoxConstraints(maxHeight: double.infinity),
        padding: const EdgeInsets.only(bottom: 20),
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        color: const Color(0xffffffff),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              Jabatan,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            DataTable(
              dataRowHeight: 35,
              columnSpacing: 5,
              // border: TableBorder.all(),
              dividerThickness: 0,
              dataTextStyle: TextStyle(fontSize: 15, color: Colors.black),
              columns: const [
                DataColumn(label: Text(' ')),
                DataColumn(label: Text(' ')),
                DataColumn(label: Text(' ')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Nama')),
                  DataCell(Text(':')),
                  DataCell(
                    Text(nama),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('NIP')),
                  DataCell(Text(':')),
                  DataCell(Text(NIP)),
                ]),
                DataRow(cells: [
                  DataCell(Text('Tempat, Tanggal Lahir')),
                  DataCell(Text(':')),
                  DataCell(Text(TTL)),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jenis Kelamin')),
                  DataCell(Text(':')),
                  DataCell(Text(Kelamin)),
                ]),
                DataRow(cells: [
                  DataCell(Text('Email')),
                  DataCell(Text(':')),
                  DataCell(Text(Email)),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pangkat')),
                  DataCell(Text(':')),
                  DataCell(Text(Pangkat)),
                ]),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: showPreviewSingkat
                  ? const Text(
                      "Preview Singkat Bidang",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    )
                  : const SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: showPreviewSingkat
                  ? Text(
                      previewSingkat,
                      // textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    ),
  );
}

//TODO dataGambar
Widget dataGambar({setPathAsset}) {
  return SliverToBoxAdapter(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        // height: 550,
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        color: Colors.white,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(setPathAsset ?? "assets/images/comingSoon.jpg")),
      ),
    ),
  );
}

Widget britaCardforBeranda() {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "BERITA TERBARU".toUpperCase(),
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 156,
                    height: 0.6,
                    color: Colors.grey,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Stack(children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/berita/berita-1.jpg",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.red,
                        ],
                            stops: const [
                          0.2,
                          2.0
                        ])),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30.0, left: 30.0),
                        child: Text(
                          'Deputi Bidang Riset dan Inovasi Daerah BRIN Kunjungi BR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Stack(children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/berita/berita-1.jpg",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.red,
                        ],
                            stops: const [
                          0.2,
                          2.0
                        ])),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30.0, left: 30.0),
                        child: Text(
                          'Deputi Bidang Riset dan Inovasi Daerah BRIN Kunjungi BR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    ],
  ));
}

Widget britaCard(String setImage, String setTitle) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10),
      child: Stack(children: <Widget>[
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                setImage,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                Colors.white.withOpacity(0.0),
                Colors.red,
              ],
                  stops: const [
                0.2,
                2.0
              ])),
        ),
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0, left: 30.0),
              child: Text(
                setTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}

Widget titleCard(String title) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black,
              // spreadRadius: 0.5,
              blurRadius: 5,
              offset: Offset(
                10,
                0,
              ), // Shadow position
            ),
          ]),
          height: 100,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget sectionJudul({namaSection}) {
  return SliverToBoxAdapter(
    child: ClipRRect(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: double.infinity),
            height: 100,
            child: const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                constraints: const BoxConstraints(
                    maxWidth: double.infinity, maxHeight: double.infinity),
                width: 300,
                height: 45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(width: 2),
                  // borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Text(
                    namaSection ?? "data kosong",
                    style: TextStyle(fontSize: 11.99),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}

Widget sosmedCard({namaSection}) {
  return SliverToBoxAdapter(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        constraints: const BoxConstraints(
            maxHeight: double.infinity, maxWidth: double.infinity),
        height: 100,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black,
            // spreadRadius: 0.5,
            blurRadius: 5,
            offset: Offset(
              10,
              0,
            ), // Shadow position
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => print("Berhasil"),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 70, 143),
                    borderRadius: BorderRadius.circular(50)),
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.facebookSquare,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => print("Berhasil"),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 70, 143),
                    borderRadius: BorderRadius.circular(50)),
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.envelope,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => print("Berhasil"),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 70, 143),
                    borderRadius: BorderRadius.circular(50)),
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
