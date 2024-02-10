import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('submit'),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color.fromARGB(255, 8, 68, 116)),
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.1,
        child: const Text(
          "Submit",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
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
