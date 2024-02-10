import 'package:flutter/material.dart';

class CustomizeDropDown extends StatelessWidget {
  final List<String> listItems = [];
  CustomizeDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>[
        'India',
        'UK',
        'USA',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}
