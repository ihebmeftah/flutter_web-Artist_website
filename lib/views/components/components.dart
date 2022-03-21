import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_web/views/theme/theme.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

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

Widget navbarItem(
    {required String text,
    required Function() onPressed,
    required MaterialStateProperty<Color?>? backgroundColor}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
        elevation: MaterialStateProperty.all(12),
        overlayColor: MaterialStateProperty.all(Colors.red),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: backgroundColor),
    child: Bounceable(
      onTap: onPressed,
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(fontSize: 18),
      ),
    ),
  );
}

slider() {
  return CarouselSlider(
    options: CarouselOptions(
      autoPlayAnimationDuration: const Duration(seconds: 4),
      height: Get.height,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 10),
      viewportFraction: 1.0,
    ),
    items: [
      "images/carsouel2.jpg",
      "images/carsouel1.jpg",
      "images/carsouel3.jpg",
    ].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
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

platforme({required IconData icn, Color? clr, required String url}) {
  return TextButton(
    style: ButtonStyle(
        elevation: MaterialStateProperty.all(12),
        overlayColor: MaterialStateProperty.all(clr ?? Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.black)),
    onPressed: () {
      js.context.callMethod('open', [url]);
    },
    child: Icon(icn),
  );
}

productcard({
  required String imhurl,
  required double? price,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    height: 240,
    width: 240,
    decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.red,
            spreadRadius: 1,
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              imhurl,
            ))),
    child: Text(
      "$price\$",
      style: const TextStyle(color: Colors.black),
    ),
  );
}

youtubePlayer({
  required String initialVideoId,
  required String trackname,
  required String albumname,
  required String views,
}) {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: initialVideoId,
    params: const YoutubePlayerParams(
      autoPlay: false,
    ),
  );
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        width: 40,
      ),
      SizedBox(
        height: 280,
        width: 400,
        child: YoutubePlayerIFrame(
          controller: _controller,
          aspectRatio: 16 / 9,
        ),
      ),
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            trackname,
            style: ThemesApp().titleStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Album $albumname",
            style: ThemesApp().titleStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            views,
            style: ThemesApp().titleStyle,
          ),
        ],
      )),
      const SizedBox(
        width: 40,
      ),
    ],
  );
}
