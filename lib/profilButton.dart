import 'package:brida/pages/Profile.dart';
import 'package:flutter/material.dart';

class ProfilButton extends StatefulWidget {
  const ProfilButton({Key? key}) : super(key: key);

  @override
  State<ProfilButton> createState() => _ProfilButtonState();
}

class _ProfilButtonState extends State<ProfilButton> {
  String dropdownvalue = 'Profile';

  // List of Profiles in our dropdown menu
  var items = [
    'Profile',
    'Profile 2',
    'Profile 3',
    'Profile 4',
    'Profile 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 44,
      ),
      decoration: BoxDecoration(
        color: dropdownvalue == items[1]
            ? Colors.deepPurple[700]
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
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          } else if (dropdownvalue == "Profile 3") {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          } else if (dropdownvalue == "Profile 4") {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          }
        },
      ),
    );
  }
}
