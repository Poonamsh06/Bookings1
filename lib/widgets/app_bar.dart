import 'package:bookings/views/bookings/Bookings.dart';
import 'package:bookings/views/login_view.dart';
import 'package:bookings/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 68, 116),
        leading: Image.asset(
          'assets/images/booking-logo-transparent-removebg-preview.png',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.23,
          width: MediaQuery.of(context).size.width * 0.2,
        ),
        actions: [
          //call search widget

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),

          //call text widget
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Container(child: const Text1(text: 'Home')),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          //call text widget
          InkWell(
            onTap: () => Get.to(BookingsPage()),
            child: const Padding(
              padding: EdgeInsets.only(top: 28),
              child: Text1(text: 'Bookings'),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),

          InkWell(
            onTap: () => Get.dialog(
              AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                content: LoginPage(),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 28),
              child: Text1(text: 'Login'),
            ),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 28),
            child: Text1(text: 'About us'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          //call text widget
          const Padding(
            padding: EdgeInsets.only(top: 28),
            child: Text1(text: 'My Account'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
        ]);
  }
}
