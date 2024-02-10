import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final image;
  final text;
  final text2;
  final text3;
  const CardWidget({super.key, this.image, this.text, this.text2, this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
      ),
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Expanded(
        child: Column(children: [
          Image.asset(
            image,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.25,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "The Golden city, is a city in the Indian ",
                      softWrap: true,
                      style:
                          TextStyle(fontWeight: FontWeight.normal, fontSize: 9),
                    ),
                    const Text(
                      "state of Rajasthan, located 575 kilometres ",
                      softWrap: true,
                      style:
                          TextStyle(fontWeight: FontWeight.normal, fontSize: 9),
                    ),
                    const Text(
                      " west of the state capital Jaipur.",
                      softWrap: true,
                      style:
                          TextStyle(fontWeight: FontWeight.normal, fontSize: 9),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Text(
                            text2,
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.033,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromARGB(255, 20, 114, 23)),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
