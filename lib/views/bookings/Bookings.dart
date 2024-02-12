import 'package:bookings/views/home_view.dart';
import 'package:bookings/views/login_view.dart';
import 'package:bookings/widgets/app_bar.dart';
import 'package:bookings/widgets/text.dart';
import 'package:bookings/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 124, 144, 159),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                              labelText: 'Name', hintText: 'First Name'),
                          BookingField(
                            hintText: 'Last Name',
                            labelText: '',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                            hintText: 'Enter your E-mail',
                            labelText: 'E-mail',
                          ),
                          BookingField(
                            hintText: 'XXXXXXXXXX',
                            labelText: 'Phone number',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(BookingPage2());
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
  const BookingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 124, 144, 159),
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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BookingField(
                                hintText: 'Enter your Address',
                                labelText: 'Address',
                              ),
                              BookingField(
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
                                labelText: 'mm/dd/yy',
                                text: 'Check-in Date',
                              ),
                              BookingField2(
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
                                labelText: 'mm/dd/yy',
                                text: 'Check-out date',
                              ),
                              // SizedBox(
                              //   width: MediaQuery.of(context).size.width * 0.02,
                              // ),
                              BookingField2(
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
                                    Get.to(BookingsPage3());
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
  const BookingsPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 124, 144, 159),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                            hintText: 'Enter your Address',
                            labelText: 'Address',
                          ),
                          BookingField(
                            hintText: 'Enter Identity proof',
                            labelText: 'Identity proof',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookingField(
                            hintText: 'Enter your E-mail',
                            labelText: 'E-mail',
                          ),
                          BookingField(
                            hintText: 'XXXXXXXXXX',
                            labelText: 'Phone number',
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
                                  Get.to(HomeView());
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
