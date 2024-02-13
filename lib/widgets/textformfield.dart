import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormView extends StatelessWidget {
  final onChanged;
  final String hintText;
  final String labelText;
  final icon;
  // final TextEditingController controller;

  const FormView({
    super.key,
    required this.hintText,
    required this.labelText,
    this.icon,
    required this.onChanged,
    //required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
                color: Colors.black,
                fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                fontWeight: FontWeight.normal,
                fontSize: 17),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          TextFormField(
            onChanged: onChanged,
            // controller: controller,
            decoration: InputDecoration(
              prefixIcon: icon,
              iconColor: Colors.black,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 17,
                fontFamily: GoogleFonts.playfairDisplay().fontFamily,
              ),
              // labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1.0,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginFormField extends StatelessWidget {
  // final String hintText;
  final String labelText;
  const LoginFormField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      decoration: InputDecoration(
        //  hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 1.0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        // You can add more validation logic here as per your requirement
        return null; // Returning null means the input is valid
      },
    );
  }
}

class BookingField extends StatelessWidget {
  final onChanged;
  final icon;
  final String hintText;
  final String labelText;
  const BookingField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.onChanged,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 19),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextFormField(
            onChanged: onChanged,
            // controller: controller,
            decoration: InputDecoration(
              prefixIcon: icon,
              iconColor: Colors.black,
              focusColor: Color.fromARGB(255, 5, 49, 84),
              //  hintText: hintText,
              hintText: hintText,
              hintStyle: TextStyle(color: Color.fromARGB(255, 5, 49, 84)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 5, 49, 84),
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1.5,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
          ),
        ),
      ],
    );
  }
}

class BookingField1 extends StatelessWidget {
  final onChanged;
  DateTime? selectedDate = DateTime.now();
  final String labelText;
  final String text;
  BookingField1(
      {super.key, required this.labelText, required this.text, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 19),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextFormField(
            onChanged: onChanged,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_month),
              focusColor: Color.fromARGB(255, 5, 49, 84),
              //  hintText: hintText,
              hintText: labelText,
              hintStyle: TextStyle(color: Color.fromARGB(255, 5, 49, 84)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 5, 49, 84),
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1.5,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
          ),
        ),
      ],
    );
  }
}

class BookingField2 extends StatelessWidget {
  final String text;
  final onChanged;
  //DateTime? selectedDate = DateTime.now();
  final String labelText;
  BookingField2(
      {super.key, required this.labelText, required this.text, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 19),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextFormField(
            onChanged: onChanged,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.schedule),
              focusColor: Color.fromARGB(255, 5, 49, 84),
              //  hintText: hintText,
              hintText: labelText,
              hintStyle: TextStyle(color: Color.fromARGB(255, 5, 49, 84)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 5, 49, 84),
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1.5,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              // You can add more validation logic here as per your requirement
              return null; // Returning null means the input is valid
            },
          ),
        ),
      ],
    );
  }
}
