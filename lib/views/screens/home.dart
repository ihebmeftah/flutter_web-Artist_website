import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/components.dart';
import '../theme/theme.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: navBAr()),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: const Center(
              child: Icon(Icons.info_outline, color: Colors.white))),
      body: Container(
        padding: const EdgeInsets.all(30),
        height: Get.height,
        width: Get.width,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(),
            Row(),
          ]),
        ),
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
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/124799568_111312587455829_2532760616190581867_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=K5uwqEmiKBcAX961j-0&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9GonpNg5lq2-dnzg4jMTVi6fvPlI3TmpPwfRhex49GDg&oe=6253A562'),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Redstar Mentality",
            style: ThemesApp().titleStyle,
          )
        ],
      ),
      Row(
        children: [
          navbarItem(text: 'home'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'music'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'events'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'shop'),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
    ],
  );
}
