import 'package:bookings/widgets/button.dart';
import 'package:bookings/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class BookingWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  BookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.3,
        child: Form(
          key: _formKey, // Assign the global key to the form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Booking Form",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const FormView(hintText: 'Poonam Sharma', labelText: "Name"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const FormView(hintText: 'abc@gmail.com', labelText: "E-mail"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const FormView(hintText: '98555-66211', labelText: "Phone no."),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const FormView(hintText: '01-01-2024', labelText: "Booking Date"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              ContainerButton()
            ],
          ),
        ),
      ),
    );
  }
}
