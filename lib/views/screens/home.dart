import 'package:flutter/material.dart';

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
                  child: homeContainer(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
