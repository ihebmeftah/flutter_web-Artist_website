import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controller.dart';
import '../components/components.dart';
import '../theme/theme.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: slider()),
        GetBuilder<Controller>(
            init: Controller(),
            builder: (controller) {
              return Expanded(
                flex: 2,
                child: Scaffold(
                  appBar: PreferredSize(
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
                                    backgroundColor: controller.navBackcolor[0]
                                        ? MaterialStateProperty.all(Colors.red)
                                        : null,
                                    text: 'home',
                                    onPressed: () {
                                      controller.navigation(0);
                                      controller.onclick(controller.selcted, 0);
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
                                      controller.onclick(controller.selcted, 1);
                                    }),
                                const SizedBox(
                                  width: 30,
                                ),
                                navbarItem(
                                    backgroundColor: null,
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
                                    backgroundColor: null),
                                const SizedBox(
                                  width: 30,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  floatingActionButton: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {},
                      child: const Center(
                          child:
                              Icon(Icons.info_outline, color: Colors.white))),
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: IndexedStack(
                            index: controller.selcted,
                            alignment: Alignment.center,
                            children: [
                              homeContainer(),
                              const Text('2'),
                              const Text('3'),
                              const Text('4'),
                            ]),
                      ),
                    ),
                  ),
                ),
              );
            })
      ],
    );
  }
}
