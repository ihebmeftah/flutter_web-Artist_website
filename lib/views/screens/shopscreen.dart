import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/models/models.dart';
import 'package:flutter_web/views/theme/theme.dart';
import 'package:get/get.dart';

import '../components/components.dart';

class Shopscreen extends StatelessWidget {
  const Shopscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          SizedBox(
            height: 400,
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "REDSTAR RADI FEATURED PRODUCTS",
                  style: ThemesApp().titleStyle,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.separated(
                    itemCount: prod.length,
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 25);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          FlipCard(
                            fill: Fill.fillBack,
                            direction: FlipDirection.HORIZONTAL, // default
                            front: productcard(
                                imhurl: prod[index].frontimhurl,
                                price: prod[index].price),
                            back: productcard(
                                imhurl: prod[index].backimhurl,
                                price: prod[index].price),
                          ),
                          const SizedBox(height: 10),
                          Text(prod[index].artist),
                          const SizedBox(height: 10),
                          Text(prod[index].nameProd),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "G.G.A FEATURED PRODUCTS",
                  style: ThemesApp().titleStyle,
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 450,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "images/ggaproduct.jpg",
                            ),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
