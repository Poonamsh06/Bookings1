import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BannerCarousal extends StatelessWidget {
  CarouselController carouselController = CarouselController();
  final List<String> images = [
    'assets/images/im.jpeg',
    'assets/images/image4.jpg',
    'assets/images/image2.jpeg'
  ];
  BannerCarousal({super.key});

  @override
  Widget build(BuildContext context) {
    // CarouselController buttonCarouselController = CarouselController();
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
          items: images.map((String image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ));
              },
            );
          }).toList(),
        ),
        Positioned(
          left: 0,
          child: IconButton(
            onPressed: () {
              carouselController.previousPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
              // carouselController.previousPage(
              //   duration: Duration(milliseconds: 30),
              //   curve: Curves.ease,
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: IconButton(
            onPressed: () {
              carouselController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ),
        const Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "New year's Eve in New city",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Ring in the new year with iconic moments and unforgettable memories.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ],
    );
  }
}
