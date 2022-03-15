import 'package:flutter/material.dart';

import '../components/components.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: slider()),
        Expanded(
          flex: 2,
          child: Scaffold(
            appBar: navBar(),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {},
                child: const Center(
                    child: Icon(Icons.info_outline, color: Colors.white))),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: homeContainer(
                      url:
                          'https://scontent.ftun15-1.fna.fbcdn.net/v/t39.30808-6/275308459_427794975807587_559221973645535357_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=8bCQmq1bPGwAX91DKcZ&_nc_oc=AQlbToCXaig_glYPGcp61FcuGpaCDPyPgeCWrcVKyx6fnoiIAf6mL2RQ2znv0cTVK94&_nc_ht=scontent.ftun15-1.fna&oh=00_AT9hmSjJ6pkGBGZu_mVJJFSWOuPvzap7q1LlbxIuanBLUA&oe=6234B81D'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
