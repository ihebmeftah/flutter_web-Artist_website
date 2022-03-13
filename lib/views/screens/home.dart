import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/components.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: slider()),
        Expanded(
          flex: 2,
          child: Scaffold(
            appBar: AppBar(
              title: navBAr(),
              elevation: 0,
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {},
                child: const Center(
                    child: Icon(Icons.info_outline, color: Colors.white))),
            body: Container(
              padding: const EdgeInsets.all(30),
              height: Get.height,
              width: Get.width,
              color: const Color.fromARGB(255, 8, 8, 8),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [Expanded(child: buildmycontainer())],
                  ),
                  Row(),
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }

  slider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: Get.height,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        viewportFraction: 1.2,
      ),
      items: [
        "https://scontent.ftun7-1.fna.fbcdn.net/v/t39.30808-6/269965005_383151843605234_6725198869422476706_n.jpg?stp=dst-jpg_p480x480&_nc_cat=111&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=oyH1oAh4HUkAX8RQDgH&_nc_oc=AQlL-wpAJw58mf79lPdkpM_5s3NkMQ7gYDGfl410saGxHNPQeUPSoeS0yFABMnhYrEY&_nc_ht=scontent.ftun7-1.fna&oh=00_AT_6eDWtLAGTAQl4KxCk8oHnYDCcJc3lI9q3sOA7ucJdfw&oe=62331169",
        "https://scontent.ftun7-1.fna.fbcdn.net/v/t39.30808-6/269865298_383151873605231_4740524413576597597_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=b09zonCnIJsAX98cxAG&_nc_ht=scontent.ftun7-1.fna&oh=00_AT_v-eUxHxqsNe1-doGJu9wQlHoqYeUO0h8o5JgBqeLDAQ&oe=62331DFF",
        "https://scontent.ftun7-1.fna.fbcdn.net/v/t39.30808-6/269905568_383151853605233_4665854728699153186_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=qK9_hZkcutoAX8MsA7l&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun7-1.fna&oh=00_AT8whf4JX3b_6kG_GKNuZ8vjfe5bJK7yEAL0C0rKanueBQ&oe=62324AB8",
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        i,
                      ),
                      fit: BoxFit.fill)),
            );
          },
        );
      }).toList(),
    );
  }
}
