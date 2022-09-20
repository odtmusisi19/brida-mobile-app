import 'package:flutter/material.dart';

class CustomData extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<Widget> ListData;

  const CustomData({Key? key, required this.ListData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: ListData,
        ),
      ),
    );
  }
}
