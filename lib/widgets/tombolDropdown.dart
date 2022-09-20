import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables

Widget tombolDropdown(List<DropdownMenuItem> items, String dropdownvalue,
    {onchange}) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 44,
    ),
    decoration: BoxDecoration(
      color: dropdownvalue == items[1] ? Colors.grey[200] : Colors.transparent,
    ),
    child: DropdownButton(
      // hint: Text("Category"),
      dropdownColor: Colors.grey[200],
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 30,
      style: const TextStyle(color: Colors.black, fontSize: 16),
      underline: const SizedBox(),
      iconEnabledColor: Colors.black,
      isExpanded: true,
      value: dropdownvalue,
      items: items,
      onChanged: onchange,
    ),
  );
}
