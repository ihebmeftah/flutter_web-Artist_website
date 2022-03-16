import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/views/screens/homescreen.dart';
import 'package:flutter_web/views/screens/musicscreen.dart';
import 'package:flutter_web/views/screens/shopscreen.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../controllers/controller.dart';
import '../components/components.dart';

class HomeScr extends StatelessWidget {
  HomeScr({Key? key}) : super(key: key);
  static const colorizeColors = [
    Colors.white,
    Color.fromARGB(255, 204, 22, 9),
  ];
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'K18cpp_-gP8',
    params: const YoutubePlayerParams(
      startAt: Duration(seconds: 30),
      showControls: true,
      showFullscreenButton: true,
    ),
  );
  static const colorizeTextStyle = TextStyle(
      fontSize: 30.0, fontFamily: 'Horizon', fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.black,
          child: slider(),
        )),
        GetBuilder<Controller>(
            init: Controller(),
            builder: (controller) {
              return Expanded(
                flex: 2,
                child: Scaffold(
                  appBar: PreferredSize(
                      preferredSize: Size(Get.width, 400),
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
                                AnimatedTextKit(
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                      'Redstar Mentality',
                                      textStyle: colorizeTextStyle,
                                      colors: colorizeColors,
                                    ),
                                  ],
                                  isRepeatingAnimation: true,
                                  repeatForever: true,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                navbarItem(
                                    backgroundColor: controller.navBackcolor[0]
                                        ? MaterialStateProperty.all(Colors.red)
                                        : null,
                                    text: 'home',
                                    onPressed: () {
                                      controller.navigation(0);
                                    }),
                                const SizedBox(
                                  width: 30,
                                ),
                                navbarItem(
                                    backgroundColor: controller.navBackcolor[1]
                                        ? MaterialStateProperty.all(Colors.red)
                                        : null,
                                    text: 'music',
                                    onPressed: () {
                                      controller.navigation(1);
                                    }),
                                const SizedBox(
                                  width: 30,
                                ),
                                navbarItem(
                                    backgroundColor: controller.navBackcolor[2]
                                        ? MaterialStateProperty.all(Colors.red)
                                        : null,
                                    text: 'events',
                                    onPressed: () {
                                      controller.navigation(2);
                                    }),
                                const SizedBox(
                                  width: 30,
                                ),
                                navbarItem(
                                    text: 'shop',
                                    onPressed: () {
                                      controller.navigation(3);
                                    },
                                    backgroundColor: controller.navBackcolor[3]
                                        ? MaterialStateProperty.all(Colors.red)
                                        : null),
                                const SizedBox(
                                  width: 30,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  floatingActionButton: FloatingActionButton.small(
                      backgroundColor: Colors.red,
                      onPressed: () {},
                      child: const Center(
                          child:
                              Icon(Icons.info_outline, color: Colors.white))),
                  body: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: IndexedStack(index: controller.selcted, children: [
                      const Homescreen(),
                      const MusicScreen(),
                      YoutubePlayerControllerProvider(
                        // Provides controller to all the widget below it.
                        controller: _controller,
                        child: const YoutubePlayerIFrame(
                          aspectRatio: 16 / 9,
                        ),
                      ),
                      const Shopscreen(),
                    ]),
                  ),
                ),
              );
            })
      ],
    );
  }
}
