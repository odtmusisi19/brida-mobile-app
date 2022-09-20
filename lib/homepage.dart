import 'package:brida/pages/berita.dart';
import 'package:brida/pages/contacts.dart';
import 'package:brida/pages/dashboard.dart';
import 'package:brida/pages/profiles.dart/profileBadan.dart';
import 'package:brida/pages/profiles.dart/profileKepalaBadan.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'Profile';
  var items = [
    'Profile',
    'Profile Badan',
    'Profile Kepala Badan',
    'Profile Sekretaris Badan',
    'Profile Bidang',
    'Struktur Organisasi',
    'Kalender Kegiatan Berida',
  ];
  var currentPage = DrawerSections.beranda;
  // ignore: prefer_typing_uninitialized_variables
  var container;
  @override
  Widget build(BuildContext context) {
    if (currentPage == DrawerSections.beranda) {
      container = DashboardPage();
    }
    //Profile
    else if (currentPage == DrawerSections.profile_badan) {
      container = ProfilBadan();
    } else if (currentPage == DrawerSections.profile_kepalaBadan) {
      container = ProfileKepalaBadan();
    } else if (currentPage == DrawerSections.berita) {
      container = Berita();
    }
    return Scaffold(
        drawer: SafeArea(
          child: Drawer(
            elevation: 60.9,
            width: MediaQuery.of(context).size.width * 0.5,
            backgroundColor: Colors.white,
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    // const HeaderDrawer(),
                    DrawerList(),
                  ],
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(247, 198, 198, 198),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Pesan'),
          icon: const Icon(Icons.message),
          backgroundColor: Colors.red[900],
        ),
        body: container);
  }

  // ignore: non_constant_identifier_names
  Widget DrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      // color: Colors.deepOrange,
      child: Column(
        children: [
          //TODO Drop Down Button
          ///////////////////////////////////////////////////////////////////////////////
          MenuItem(1, "Beranda", Icons.dashboard_outlined,
              currentPage == DrawerSections.beranda ? true : false),
          SizedBox(
            width: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                    child: Icon(
                  Icons.people,
                  size: 20,
                )),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: DropdownButton(
                      hint: const Text(
                        "Category",
                        style: TextStyle(color: Colors.black),
                      ),
                      dropdownColor: Colors.grey[200],
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      underline: const SizedBox(),
                      iconEnabledColor: Colors.black,
                      isExpanded: true,
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items,
                            onTap: () {},
                            child: Text(
                              items,
                              style: TextStyle(),
                            ));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                        if (dropdownvalue == "Profile Badan") {
                          Navigator.pop(context);
                          currentPage = DrawerSections.profile_badan;
                        } else if (dropdownvalue == "Profile Kepala Badan") {
                          Navigator.pop(context);
                          currentPage = DrawerSections.profile_kepalaBadan;
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///////////////////////////////////////////////////////////

          // MenuItem(2, "profile", Icons.people_alt_outlined,
          //     currentPage == DrawerSections.profile ? true : false),
          MenuItem(3, "berita", Icons.event,
              currentPage == DrawerSections.berita ? true : false),
          MenuItem(4, "Program", Icons.check_box,
              currentPage == DrawerSections.program ? true : false),
          MenuItem(5, "Mitra", Icons.settings_outlined,
              currentPage == DrawerSections.mitra ? true : false),
          MenuItem(6, "PPID", Icons.abc,
              currentPage == DrawerSections.ppid ? true : false),
          MenuItem(7, "Layanan", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.layanan ? true : false),
          MenuItem(8, "Edukasi", Icons.feedback_outlined,
              currentPage == DrawerSections.edukasi ? true : false),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MenuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[200] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          // print(id);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.beranda;
            } else if (id == 2) {
              currentPage = DrawerSections.profile_badan;
            } else if (id == 3) {
              currentPage = DrawerSections.berita;
            } else if (id == 4) {
              currentPage = DrawerSections.program;
            } else if (id == 5) {
              currentPage = DrawerSections.mitra;
            } else if (id == 6) {
              currentPage = DrawerSections.ppid;
            } else if (id == 7) {
              currentPage = DrawerSections.layanan;
            } else if (id == 8) {
              currentPage = DrawerSections.edukasi;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Colors.grey[800],
              )),
              Expanded(
                  flex: 5,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  beranda,
  //Profile
  profile_badan,
  profile_kepalaBadan,
  berita,
  program,
  mitra,
  ppid,
  // ignore: constant_identifier_names
  layanan,
  // ignore: constant_identifier_names
  edukasi,
}
