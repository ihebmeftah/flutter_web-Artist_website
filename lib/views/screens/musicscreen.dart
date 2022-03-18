import 'package:flutter/material.dart';
import 'package:flutter_web/views/components/components.dart';

import '../../models/models.dart';

// ignore: must_be_immutable
class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ListView.separated(
        controller: ScrollController(),
        itemCount: ytb.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return youtubePlayer(
              initialVideoId: ytb[index].id,
              albumname: ytb[index].albumname,
              trackname: ytb[index].trackname,
              views: ytb[index].views);
        },
      );
    });
  }
}
