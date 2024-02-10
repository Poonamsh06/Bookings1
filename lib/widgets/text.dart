import 'package:bookings/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Text1 extends StatefulWidget {
  final String text;
  const Text1({super.key, required this.text});

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHovered = false;
          });
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: _isHovered
                  ? Color.fromARGB(255, 96, 95, 96)
                  : Colors.transparent,
            ),
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )));
  }
}

class FooterText1 extends StatelessWidget {
  final String text;
  const FooterText1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 19, fontWeight: FontWeight.normal, color: Colors.black),
    );
  }
}

class FooterText2 extends StatelessWidget {
  final String text;
  const FooterText2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: const Color.fromARGB(255, 90, 89, 89)),
    );
  }
}

class DropDwnbutton extends StatefulWidget {
  const DropDwnbutton({super.key});

  @override
  State<DropDwnbutton> createState() => _DropDwnbuttonState();
}

class _DropDwnbuttonState extends State<DropDwnbutton> {
  @override
  Widget build(BuildContext context) {
    bool _isHovered = false;
    var _selectedOption = 'Login';
    return MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHovered = false;
          });
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: _isHovered
                  ? Color.fromARGB(255, 163, 208, 245)
                  : Colors.transparent,
            ),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  autofocus: false,
                  // hint: ,
                  underline: Container(color: Colors.transparent),
                  value: _selectedOption,

                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedOption = newValue!;
                      if (_selectedOption == 'Login') {
                        Get.to(LoginPage());
                      } else {
                        print('Error');
                      }
                    });
                  },
                  items: <String>[
                    'Login',
                    'Sign Up',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    );
                  }).toList(),
                ))));
  }
}
