import 'package:bookings/views/login_view.dart';
import 'package:bookings/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.only(top: 15),
        alignment: Alignment.center,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: const Color.fromARGB(255, 8, 68, 116),
                onPressed: () {
                  Get.back();
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.05,
                  // ),
                  const Text(
                    "Create an account",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: const LoginFormField(labelText: 'Email'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: const LoginFormField(labelText: 'Password'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 8, 68, 116)),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      GestureDetector(
                        onTap: () => Get.dialog(
                          AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            content: LoginPage(),
                          ),
                        ),
                        child: const Text(
                          " Login ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 8, 68, 116),
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  const Text(
                    "By continuing, you have read and agree to our Terms and Conditions,",
                    style: TextStyle(
                        color: Color.fromARGB(255, 139, 137, 137),
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ),
                  const Text(
                    "Privacy Statement, and Expedia Rewards Terms & Conditions.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 139, 137, 137),
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ]));
  }
}
