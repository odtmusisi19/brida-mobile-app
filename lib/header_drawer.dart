import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/profile1.png'))),
          ),
          Text(
            "Ogi Darma Tena",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "ogidarmatena@gmail.com",
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          ),
        ],
      ),
    );
  }
}
