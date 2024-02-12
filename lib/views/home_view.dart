import 'package:bookings/views/bookings/Bookings.dart';
import 'package:bookings/views/login_view.dart';
import 'package:bookings/views/sign_up.dart';
import 'package:bookings/widgets/app_bar.dart';
import 'package:bookings/widgets/bannar_carousal.dart';
import 'package:bookings/widgets/booking_widget.dart';
import 'package:bookings/widgets/card.dart';
import 'package:bookings/widgets/discount_cards.dart';
import 'package:bookings/widgets/footer.dart';
import 'package:bookings/widgets/login_popup.dart';
import 'package:bookings/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // final double topInset = MediaQuery.of(context).padding.top;
    // final double rightInset = MediaQuery.of(context).size.width -
    //     MediaQuery.of(context).padding.right;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.15,
            ),
            child: AppBarWidget()),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BannerCarousal Widget
              BannerCarousal(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Explore stays in trending destinations",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 20),
                  child: Text(
                    "Experience the allure of trending destinations, where every corner tells a story waiting to be discovered.",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //Container in grid view
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardWidget(
                    text: 'Jaiselmer',
                    image: 'assets/images/jaselmer.jpeg',
                    text2: '4.2',
                  ),
                  CardWidget(
                    text: 'Hawa Mahel',
                    image: 'assets/images/hwamehal.jpeg',
                    text2: '4.1',
                  ),
                  CardWidget(
                    text: "Taj Mahel",
                    image: 'assets/images/taj_mahal.jpeg',
                    text2: '4.7',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardWidget(
                    text: 'New Dehli',
                    image: 'assets/images/image12.jpeg',
                    text2: '4.6',
                  ),
                  CardWidget(
                    text: 'UdayPur',
                    image: 'assets/images/udaypur.jpeg',
                    text2: '4.4',
                  ),
                  CardWidget(
                    text: 'New Dehli',
                    image: 'assets/images/new_dehli.jpeg',
                    text2: '4.6',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              //Booking form
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Image.asset(
                        'assets/images/form.jpeg',
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 0.6,
                        fit: BoxFit.fill,
                      ),
                    ),
                    BookingWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Offers",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 29,
                        color: Colors.black),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 8),
                  child: Text(
                    "Promotions, deals and special offers for you",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DiscountCard(),
                  DiscountCard2(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              WebsiteFooter(),
            ],
          ),
        ));
  }

  // PopupMenuItem _buildPopupMenuItem(String title) {
  //   return PopupMenuItem(
  //     child: Text(title),
  //   );
  // }
}
