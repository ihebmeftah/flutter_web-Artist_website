import 'package:flutter/material.dart';
import 'package:flutter_web/views/components/components.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ListView.separated(
        controller: ScrollController(),
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return youtubePlayer(initialVideoId: '1vEcmTY3-y4');
        },
      );
    });
  }
}
