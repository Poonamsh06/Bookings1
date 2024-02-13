import 'package:bookings/controller/booking_controller.dart';
import 'package:bookings/views/home_view.dart';
import 'package:bookings/views/login_view.dart';
import 'package:bookings/widgets/app_bar.dart';
import 'package:bookings/widgets/text.dart';
import 'package:bookings/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingsPage extends StatelessWidget {
  final controller = Get.put(BookingsPageController());

  BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height * 0.15,
          ),
          child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            BookingText(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.48,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 74, 96),
                      // Color.fromARGB(255, 56, 47, 47),
                      borderRadius: BorderRadius.circular(12)),
                  // border: Border.all(color: Colors.black)

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                              icon: Icon(Icons.person),
                              onChanged: (value) =>
                                  controller.firstName.value = value,
                              //onChanged: controller.firstName,
                              labelText: 'Name:',
                              hintText: 'First Name'),
                          BookingField(
                            icon: Icon(Icons.person),
                            onChanged: (value) =>
                                controller.lastName.value = value,
                            hintText: 'Last Name',
                            labelText: '',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                            icon: Icon(Icons.mail),
                            onChanged: (value) =>
                                controller.email.value = value,
                            hintText: 'Enter your E-mail',
                            labelText: 'E-mail:',
                          ),
                          BookingField(
                            icon: Icon(Icons.phone_android),
                            onChanged: (value) =>
                                controller.phoneNumber.value = value,
                            hintText: 'Enter your phone no.',
                            labelText: 'Phone number:',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          if (controller.firstName.value.isEmpty ||
                              controller.lastName.value.isEmpty ||
                              controller.email.value.isEmpty ||
                              controller.phoneNumber.value.isEmpty) {
                            Get.snackbar('Error', 'All fields are required',
                                backgroundColor: Colors.white,
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.4,
                                snackStyle: SnackStyle.FLOATING,
                                margin: EdgeInsets.all(20));
                          } else {
                            controller.saveFormDataToFirestore(context);
                            Get.to(() => BookingPage2());
                          }
                          // controller.saveFormDataToFirestore(context);

                          // Get.to(() => BookingPage2());
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.071,
                            width: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 5, 49, 84),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 113, 112, 112)),
                            ),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}

class BookingPage2 extends StatelessWidget {
  final controller = Get.put(BookingsPageController());
  BookingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Color.fromARGB(255, 124, 144, 159),
        appBar: PreferredSize(
            preferredSize: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.15,
            ),
            child: AppBarWidget()),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                BookingText(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width * 0.48,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 48, 74, 96),
                        //Color.fromARGB(255, 56, 47, 47),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BookingField(
                                onChanged: (value) =>
                                    controller.rooms.value = value,
                                icon: const Icon(
                                  Icons.bed,
                                  color: Colors.black,
                                ),
                                hintText: 'Enter no. of rooms',
                                labelText: 'Room',
                              ),
                              BookingField(
                                onChanged: (value) =>
                                    controller.guests.value = value,
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: 'Enter No. of Guests',
                                labelText: 'No. of Guests',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BookingField1(
                                onChanged: (value) =>
                                    controller.checkInTime.value = value,
                                labelText: 'mm/dd/yy',
                                text: 'Check-in Date',
                              ),
                              BookingField2(
                                onChanged: (value) =>
                                    controller.checkInTime.value = value,
                                labelText: '00 : 00',
                                text: 'Check-in Time',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BookingField1(
                                onChanged: (value) =>
                                    controller.checkOutTime.value = value,
                                labelText: 'mm/dd/yy',
                                text: 'Check-out date',
                              ),
                              // SizedBox(
                              //   width: MediaQuery.of(context).size.width * 0.02,
                              // ),
                              BookingField2(
                                onChanged: (value) =>
                                    controller.checkOutTime.value = value,
                                labelText: '00 : 00',
                                text: 'Check-out Time',
                              ),
                            ],
                          ),
                          // BookingField(
                          //   labelText: 'Phone number',
                          // ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.071,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 5, 49, 84),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 113, 112, 112)),
                                        ),
                                        child: const Text(
                                          'Preview',
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        )),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                  onTap: () {
                                    if (controller.guests.value.isEmpty ||
                                        controller.rooms.value.isEmpty ||
                                        controller.checkInTime.value.isEmpty ||
                                        controller.checkOutTime.value.isEmpty) {
                                      // Show an error message or toast indicating that all fields are required
                                      // Example using GetX: Get.snackbar('Error', 'All fields are required');
                                      Get.snackbar(
                                          'Error', 'All fields are required',
                                          backgroundColor: Colors.white,
                                          maxWidth: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          snackStyle: SnackStyle.FLOATING,
                                          margin: EdgeInsets.all(20));
                                    } else {
                                      controller
                                          .saveFormDataToFirestore(context);
                                      Get.to(() => BookingsPage3());
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 70),
                                    child: Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.071,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 5, 49, 84),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 113, 112, 112)),
                                        ),
                                        child: const Text(
                                          'Next',
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
              ]),
        ));
  }
}

class BookingsPage3 extends StatelessWidget {
  final controller = Get.put(BookingsPageController());
  BookingsPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 124, 144, 159),
      appBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height * 0.15,
          ),
          child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            BookingText(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.48,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 48, 74, 96),
                    // Color.fromARGB(255, 56, 47, 47),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                            onChanged: (value) =>
                                controller.address.value = value,
                            icon: Icon(
                              Icons.location_city,
                              color: Colors.black,
                            ),
                            hintText: 'Enter your Address',
                            labelText: 'Address',
                          ),
                          BookingField(
                            icon: Icon(
                              Icons.perm_identity,
                              color: Colors.black,
                            ),
                            onChanged: (value) =>
                                controller.identityProof.value = value,
                            hintText: 'Enter Identity proof',
                            labelText: 'Identity proof',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                            icon: Icon(Icons.mail),
                            onChanged: (value) =>
                                controller.email.value = value,
                            hintText: 'Enter your E-mail',
                            labelText: 'E-mail:',
                          ),
                          BookingField(
                            icon: Icon(Icons.phone_android),
                            onChanged: (value) =>
                                controller.phoneNumber.value = value,
                            hintText: 'Enter your phone no.',
                            labelText: 'Phone number:',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *
                                        0.071,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 5, 49, 84),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          width: 1,
                                          color: Color.fromARGB(
                                              255, 113, 112, 112)),
                                    ),
                                    child: const Text(
                                      'Preview',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: InkWell(
                                onTap: () {
                                  if (controller.firstName.value.isEmpty ||
                                      controller.lastName.value.isEmpty ||
                                      controller.email.value.isEmpty ||
                                      controller.phoneNumber.value.isEmpty) {
                                    Get.snackbar(
                                        'Error', 'All fields are required',
                                        backgroundColor: Colors.white,
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                04);
                                  } else {
                                    controller.saveFormDataToFirestore(context);
                                    Get.snackbar('Success',
                                        'Form data saved successfully',
                                        backgroundColor: Colors.white,
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        snackStyle: SnackStyle.FLOATING,
                                        margin: EdgeInsets.all(20));
                                    Get.to(() => HomeView());
                                  }
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *
                                        0.071,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 5, 49, 84),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          width: 1,
                                          color: Color.fromARGB(
                                              255, 113, 112, 112)),
                                    ),
                                    child: const Text(
                                      'Submit',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}
