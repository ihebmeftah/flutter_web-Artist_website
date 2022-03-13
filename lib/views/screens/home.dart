import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/components.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        height: Get.height,
        width: Get.width,
        color: Colors.indigo,
        child: Column(children: [
          navBAr(),
          Row(),
          Row(),
        ]),
      ),
    );
  }
}

Widget navBAr() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          navbarItem(text: 'home'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'github'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'linkedin'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'twitter'),
        ],
      ),
      const Text(
        'LOGO',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
      )
    ],
  );
}
