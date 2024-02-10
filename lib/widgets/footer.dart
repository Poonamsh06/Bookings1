import 'package:bookings/widgets/footer_bottons.dart';
import 'package:bookings/widgets/footer_s_l.dart';
import 'package:bookings/widgets/text.dart';
import 'package:flutter/material.dart';

class WebsiteFooter extends StatefulWidget {
  const WebsiteFooter({super.key});

  @override
  State<WebsiteFooter> createState() => _WebsiteFooterState();
}

class _WebsiteFooterState extends State<WebsiteFooter> {
  @override
  Widget build(BuildContext context) {
    //List<String> _locations = ['UK', 'USA']; // Option 2
    //String _selectedLocation ='India';
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.98,
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromARGB(255, 240, 236, 236), width: 1),
            borderRadius: BorderRadius.circular(6),
            color: Color.fromARGB(255, 214, 210, 210)
            // color: Color.fromARGB(255, 213, 211, 211)
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.07,
                ),
                Image.asset(
                  'assets/images/booking-logo-transparent-removebg-preview.png',
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.25
                    // MediaQuery.of(context).size.width * 0.3,

                    //  width: MediaQuery.of(context).size.width * 0.5,
                    ),
                FooterButtons(
                  text: 'India',
                  image: "assets/images/flag.jpeg",
                  dropdownItems: ['India', 'Uk', 'USA'],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                FooterButton1(
                  text: 'English',
                  dropdownItems: ['English', 'Hindi'],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FooterText1(text: "About us"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    FooterText2(text: 'Who we are'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    FooterText2(text: 'Blog'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    FooterText2(text: 'Work with us'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    FooterText2(text: 'Contact us'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FooterText1(text: "Bookings"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    FooterText2(text: 'Partner with us'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    FooterText2(text: 'Apps for you'),
                  ],
                ),
                Column(
                  children: [
                    FooterText1(text: "Enterprises"),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    FooterText2(text: 'Bookings for Enterprise'),
                    // FooterText2(text: 'Apps for you'),
                  ],
                ),
                Column(
                  children: [
                    const FooterText1(text: "Learn more"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    const FooterText2(text: 'Privacy'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    const FooterText2(text: 'Security'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    const FooterText2(text: 'Terms'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    const FooterText2(text: 'Sitemap'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FooterText1(text: "Social Links"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FooterSocialLinks(
                          imagePath: 'assets/images/youtube.jpeg',
                        ),
                        // FooterSocialLinks(
                        //   images:
                        // ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        FooterSocialLinks(
                          imagePath: 'assets/images/linkeden.png',
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        FooterSocialLinks(
                          imagePath: 'assets/images/insta.jpeg',
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        FooterSocialLinks(
                          imagePath: 'assets/images/f.png',
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                      ],
                    ),

                    //   ),
                    // GestureDetector(
                    //   onTap: () => print('Hello'),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(8),
                    //         color: const Color.fromARGB(255, 5, 49, 84),
                    //         border: Border.all(
                    //             width: 1,
                    //             color: Color.fromARGB(255, 113, 112, 112))),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(6.0),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Image.asset(
                    //             "assets/images/playstore-removebg-preview.png",
                    //             fit: BoxFit.fill,
                    //             height:
                    //                 MediaQuery.of(context).size.height * 0.04,
                    //             width:
                    //                 MediaQuery.of(context).size.width * 0.025,
                    //           ),
                    //           SizedBox(
                    //             width:
                    //                 MediaQuery.of(context).size.width * 0.003,
                    //           ),
                    //           const Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Text("Get it in",
                    //                   style: TextStyle(
                    //                       fontSize: 10,
                    //                       fontWeight: FontWeight.normal,
                    //                       color: Colors.white)),
                    //               Text("Google Play",
                    //                   style: TextStyle(
                    //                       fontSize: 13,
                    //                       fontWeight: FontWeight.normal,
                    //                       color: Colors.white)),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              color: Color.fromARGB(255, 218, 216, 216),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: FooterText2(
                  text: '2024 © Bookings™ Ltd. All rights reserved'),
            )
          ],
        ),
      ),
    );
  }
}
