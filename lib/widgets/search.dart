import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        border:
            Border.all(color: Color.fromARGB(255, 195, 220, 241), width: 1.0),
        color: Color.fromARGB(255, 221, 235, 247),
      ),
      child: TextField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.black),
          hintText: 'Search........',
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        ),
        style: TextStyle(color: Colors.black),
        onChanged: (value) {
          print('Hello!');
        },
        onSubmitted: (value) {
          print('Hello!!!');
        },
      ),
    );
  }
}
