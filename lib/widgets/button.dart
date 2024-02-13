import 'package:bookings/controller/contactus_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerButton extends StatelessWidget {
  final controller = Get.put(ContactusController());
  ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (controller.name.value.isEmpty ||
            controller.email.value.isEmpty ||
            controller.phone.value.isEmpty) {
          Get.snackbar('Error', 'All fields are required',
              backgroundColor: Colors.white,
              maxWidth: MediaQuery.of(context).size.width * 04);
        } else {
          controller.saveContactusToFirestore(context);
          Get.snackbar('Success', 'Form data saved successfully',
              backgroundColor: Colors.white,
              maxWidth: MediaQuery.of(context).size.width * 0.4,
              snackStyle: SnackStyle.FLOATING,
              margin: EdgeInsets.all(20));
          print('submit');
          // Get.to(() => HomeView());
        }
      },
      //Get.dialog(Text("Your ")),

      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 8, 68, 116)),
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.1,
          child: Text(
            "Submit",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.playfairDisplay().fontFamily,
            ),
          )),
    );
  }
}

class BookingsButton extends StatelessWidget {
  const BookingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color.fromARGB(255, 8, 68, 116)),
      // height: MediaQuery.of(context).size.height * 0.06,
      height: MediaQuery.of(context).size.width >= 600
          ? MediaQuery.of(context).size.height * 0.063
          : MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width >= 600
          ? MediaQuery.of(context).size.width * 0.12
          : MediaQuery.of(context).size.width * 0.09,
      //  width: MediaQuery.of(context).size.width * 0.12,
      child: const Text(
        "Search for bookings",
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
      ),
    );
  }
}
