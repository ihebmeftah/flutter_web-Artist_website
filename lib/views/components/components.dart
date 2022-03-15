import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/events.dart';
import '../screens/home.dart';
import '../theme/theme.dart';

Widget defaultTextFormField({
  String? Function(String? val)? validate,
  required String htext,
  bool isPass = false,
  Color cursorColor = Colors.black,
  double cursorHeight = 22.0,
  required IconData prefixIcon,
  IconData? sufixIcon,
  required TextEditingController? controller,
  TextInputAction? textInputAction,
  int? maxLength,
  int maxLines = 1,
  minLines,
  VoidCallback? pressicon,
  tapFunction,
  change,
  onsubmit,
  TextInputType? textInputType,
  Widget? label,
  bool? isEnable = true,
}) =>
    TextFormField(
      onFieldSubmitted: onsubmit,
      enabled: isEnable,
      validator: (value) => validate!(value),
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      controller: controller,
      cursorColor: cursorColor,
      cursorHeight: cursorHeight,
      obscureText: isPass,
      keyboardType: textInputType,
      onTap: tapFunction,
      onChanged: change,
      decoration: InputDecoration(
          label: label,
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: IconButton(
            onPressed: pressicon,
            icon: Icon(
              sufixIcon,
            ),
            autofocus: false,
            color: Colors.black,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintText: htext),
    );
PreferredSize navBar() {
  return PreferredSize(
      preferredSize: Size(Get.width, 500),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/124799568_111312587455829_2532760616190581867_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=K5uwqEmiKBcAX961j-0&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9GonpNg5lq2-dnzg4jMTVi6fvPlI3TmpPwfRhex49GDg&oe=6253A562',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Redstar entality ",
                  style: ThemesApp().titleStyle,
                )
              ],
            ),
            Row(
              children: [
                navbarItem(
                    text: 'home',
                    onPressed: () {
                      Get.offAll(const HomeScr());
                    }),
                const SizedBox(
                  width: 30,
                ),
                navbarItem(text: 'music', onPressed: () {}),
                const SizedBox(
                  width: 30,
                ),
                navbarItem(
                    text: 'events',
                    onPressed: () {
                      Get.offAll(const Events());
                    }),
                const SizedBox(
                  width: 30,
                ),
                navbarItem(text: 'shop', onPressed: () {}),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ));
}

Widget navbarItem({
  required String text,
  required Function() onPressed,
}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(12),
      overlayColor: MaterialStateProperty.all(Colors.red),
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    child: Text(
      text.toUpperCase(),
      style: const TextStyle(fontSize: 18),
    ),
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

Widget homeContainer({String? url, Widget? child}) {
  return Container(
    height: 450,
    decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: NetworkImage(
              url ??
                  "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/129000327_104773551487508_3874365708364612442_n.png?_nc_cat=104&ccb=1-5&_nc_sid=e3f864&_nc_ohc=hgZFP1UNonoAX-CG1GD&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9Av73IY9mGwoYlUE85LuD50pydCFIlUnS3_KBQ__mqQQ&oe=6251F54B",
            ),
            fit: BoxFit.fill)),
    child: child,
  );
}
