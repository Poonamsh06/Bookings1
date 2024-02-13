import 'package:bookings/controller/contactus_controller.dart';
import 'package:bookings/widgets/button.dart';
import 'package:bookings/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingWidget extends StatelessWidget {
  final controller = Get.put(ContactusController());
  final _formKey = GlobalKey<FormState>();
  BookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.28,
      child: Form(
        key: _formKey, // Assign the global key to the form
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Get in touch with us",
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.playfairDisplay().fontFamily,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            FormView(
              onChanged: (value) => controller.name.value = value,
              hintText: 'Enter your name',
              labelText: "Name",
              icon: Icon(Icons.person),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            FormView(
              onChanged: (value) => controller.email.value = value,
              hintText: 'Enter your email',
              labelText: "E-mail",
              icon: Icon(Icons.mail),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            FormView(
              onChanged: (value) => controller.phone.value = value,
              hintText: 'Enter your phone no.',
              labelText: "Phone no.",
              icon: Icon(Icons.phone_android),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.03,
            // ),
            // const FormView(
            //     hintText: 'Enter Booking Date', labelText: "Booking Date"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            ContainerButton()
          ],
        ),
      ),
    );
  }
}
