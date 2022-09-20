import 'package:brida/pages/Profile.dart';
import 'package:brida/pages/contacts.dart';
import 'package:brida/pages/dashboard.dart';
import 'package:brida/profilButton.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String dropdownvalue = 'Profile';
  var items = [
    'Profile',
    'Profile 2',
    'Profile 3',
    'Profile 4',
    'Profile 5',
  ];
  var currentPage = DrawerSections.dasboard;
  var container;
  @override
  Widget build(BuildContext context) {
    if (currentPage == DrawerSections.dasboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.profile) {
      container = Profile();
      print(currentPage);
    }
    return Scaffold(
        drawer: SafeArea(
          child: Drawer(
            elevation: 60.9,
            width: MediaQuery.of(context).size.width * 0.5,
            backgroundColor: Colors.deepPurple[900],
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
        backgroundColor: Colors.deepPurple[100],
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Pesan'),
          icon: const Icon(Icons.message),
          backgroundColor: Colors.deepPurple[900],
        ),
        body: container);
  }

  // ignore: non_constant_identifier_names
  Widget DrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 25),
      // color: Colors.deepOrange,
      child: Column(
        children: [
          //TODO Drop Down Button
          ///////////////////////////////////////////////////////////////////////////////
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 44,
            ),
            decoration: BoxDecoration(
              color: dropdownvalue == items[1]
                  ? Colors.deepPurple[900]
                  : Colors.transparent,
            ),
            child: DropdownButton(
              // hint: Text("Category"),
              dropdownColor: Colors.deepPurple,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 30,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              underline: const SizedBox(),
              iconEnabledColor: Colors.white,
              isExpanded: true,
              value: dropdownvalue,
              items: items.map((String items) {
                return DropdownMenuItem(
                    value: items,
                    onTap: () {},
                    child: Container(
                      child: Text(
                        items,
                        style: TextStyle(),
                      ),
                    ));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
                if (dropdownvalue == "Profile 2") {
                  currentPage = DrawerSections.profile;
                }
              },
            ),
          ),
          ///////////////////////////////////////////////////////////
          MenuItem(1, "Beranda", Icons.dashboard_outlined,
              currentPage == DrawerSections.dasboard ? true : false),
          MenuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          MenuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          MenuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          MenuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          MenuItem(6, "Notification", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          MenuItem(7, "Privacy Policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          MenuItem(8, "Send Feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MenuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.deepPurple[700] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          // print(id);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dasboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
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
                color: Colors.transparent,
              )),
              Expanded(
                  flex: 5,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dasboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  // ignore: constant_identifier_names
  privacy_policy,
  // ignore: constant_identifier_names
  send_feedback,
  profile,
}
