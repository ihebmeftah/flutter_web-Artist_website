import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/components.dart';
import '../theme/theme.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            navBAr(),
            const SizedBox(
              height: 10,
            ),
            mainSec(),
            Row(),
          ]),
        ),
      ),
    );
  }
}

Widget mainSec() {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          buildmycontainer(flex: 2),
          const SizedBox(
            width: 20,
          ),
          buildmycontainer(
              url:
                  "https://scontent.ftun7-1.fna.fbcdn.net/v/t39.30808-6/275308459_427794975807587_559221973645535357_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=SMsQGRWczWQAX_kgDaP&_nc_oc=AQkWL2oPsUG62LzVMFTJXoTeK1OkW5MXxOZlJrSwoaA7Z4yz7waknxhOz-saSM8u21g&_nc_ht=scontent.ftun7-1.fna&oh=00_AT8nMp6KY8-Ib5V4aWgHiRivIKo1jKjQ9_BD6sYEEXdOkw&oe=6232BDDD"),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        "Last release",
        style: ThemesApp().titleStyle,
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          buildmycontainer(
              height: 300,
              url:
                  "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/191125373_241455844441502_8637456328348330125_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=o7G_GUdibIMAX8C2n8o&_nc_ht=scontent.ftun7-1.fna&oh=00_AT-Lsp0eVDkaLC9VMwnuqjiwJWh57Nm9WNuQfaadRe4HFQ&oe=62556AA7"),
          const SizedBox(
            width: 20,
          ),
          buildmycontainer(
              height: 300,
              url:
                  "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/139014990_151567876763633_7746472170964656246_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=GrQuPpFkqvgAX-uAMM6&_nc_ht=scontent.ftun7-1.fna&oh=00_AT-e_EjTq7--UDtdGku6h-AC7XXIbZ03wQZCi-wpsV4fNQ&oe=6252BC60"),
          const SizedBox(
            width: 20,
          ),
          buildmycontainer(
              height: 300,
              url:
                  "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/135827346_143416627578758_5062330318139042846_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=WXuuoEVAFf0AX_k7OMX&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9KqTKT1-9bgc7oUKtskmPe5BBB2TMA0IkY_aajKmpGIQ&oe=625274E5"),
        ],
      ),
    ]),
  );
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
