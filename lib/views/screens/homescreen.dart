import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: NetworkImage(
                "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/129000327_104773551487508_3874365708364612442_n.png?_nc_cat=104&ccb=1-5&_nc_sid=e3f864&_nc_ohc=hgZFP1UNonoAX-CG1GD&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9Av73IY9mGwoYlUE85LuD50pydCFIlUnS3_KBQ__mqQQ&oe=6251F54B",
              ),
              fit: BoxFit.fill)),
    );
  }
}
