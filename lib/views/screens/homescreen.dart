import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/components.dart';
import '../theme/theme.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: NetworkImage(
                            "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/129000327_104773551487508_3874365708364612442_n.png?_nc_cat=104&ccb=1-5&_nc_sid=e3f864&_nc_ohc=hgZFP1UNonoAX-CG1GD&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9Av73IY9mGwoYlUE85LuD50pydCFIlUnS3_KBQ__mqQQ&oe=6251F54B",
                          ),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  left: 660,
                  top: 10,
                  child: Container(
                    width: 200,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red.withOpacity(0.4)),
                    child: Text(
                        """RedStar is a Tunisian Hip Hop group, based in Sousse, Tunisia.Formed in 2010, the group achieved mainstream success with its lineup formed of "G.G.A & RedStar Radi", and the legacy continues""",
                        style: ThemesApp()
                            .bodyStyle1
                            .copyWith(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          bio1(
              title: 'REDSTAR RADI',
              imgurl:
                  "https://scontent.ftun15-1.fna.fbcdn.net/v/t1.6435-9/69577320_10218574152295668_5055212267289706496_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_ohc=wmjq1jirq9IAX_tPD6U&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun15-1.fna&oh=00_AT9TwwWhkQVH-Cn_PjKoQJLk-OL4OmRM67oobmXkGDiIJg&oe=6255FA57",
              text: """ 
         Radi, real name Ben Amor Aymen, born in Sousse, Tunisia, founder of the group Red Star in 2009, is considered by many as the greatest Arab rapper of all time and is very respected in the world of Arabic hip-hop.
         
         Independent artist Radi finally launched himself in 2013 with the release of his first solo mixtape “Fly Lé Ama G’ad El Blé”. Warmly acclaimed by the critics, Radi successively released hits and like “Donya”, “Train”, “Polika” and “Letter to my son” currently exceed the 7,000,000 views on its official channel “RedStar Radi”.
         
         His first solo album “No Pain no Gain” exploded social networks and the release of the hit “Polika” having exceeded 2 million views. After a very short break, Radi returns with his second solo album titled “AWS” which includes the highly acclaimed tracks such as “Letter to my son”, “O’roubiyat” and “Clandestino”.
         
         in 2015 Redstar Radi launches his 3 rd solo album named Salute after a visit to the states in a leadership program with the United States Open Air Minister followed by the classic album (Back to the Roots) after the Ep (Between Life and Death) with REDRIOT Records in the The Netherlands.
              """),
          const SizedBox(
            height: 40,
          ),
          bio2(
              title: 'G.G.A',
              imgurl:
                  "https://scontent.ftun15-1.fna.fbcdn.net/v/t1.6435-9/120602347_3672491669436012_435243561308458538_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=a26aad&_nc_ohc=nBqbJleutvsAX_HLeo8&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun15-1.fna&oh=00_AT_KIcgeYAKCOaGHs2bTRyv1MPpa1zoSfqa1nlf92ORdfg&oe=6256EA24",
              text: """ 
         G.G.A, real name Guezguez Ali, born in Sousse, Tunisia, founder of the group Red Star in 2009, is considered by many as the greatest Arab rapper of all time and is very respected in the world of Arabic hip-hop.
         
         Independent artist G.G.A finally launched himself in 2013 with the release of his first solo mixtape “Mixtape لحمر ”. Warmly acclaimed by the critics, Radi successively released hits and like “Yeah”, “خلوني”and “Mraydha”  currently exceed the 19,000,000 views on its official channel “RedStar Radi”.
         
         His first solo album “لحمر” exploded social networks and the release of the hit “Yeah” having exceeded 20 million views. 
         
              """),
        ],
      ),
    );
  }

  bio1({required String imgurl, required String text, required String title}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 480,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    imgurl,
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  platforme(
                      icn: FontAwesomeIcons.facebookF,
                      url: "https://www.facebook.com/Red.Star.73"),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.instagram,
                      clr: Colors.pinkAccent,
                      url: "https://www.instagram.com/redstarradi/"),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.spotify,
                      clr: Colors.green,
                      url:
                          "https://open.spotify.com/artist/3IMbYEUHFZ6Nkocs2GqMxp"),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.youtube,
                      clr: Colors.red,
                      url:
                          "https://www.youtube.com/channel/UCpNEN5-7gzhUpapA3ob2ZqQ"),
                  const SizedBox(
                    height: 10,
                  )
                ]),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: ThemesApp().titleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(text),
              ]),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  bio2({required String imgurl, required String text, required String title}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: ThemesApp().titleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(text),
              ]),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 480,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    imgurl,
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  platforme(
                      icn: FontAwesomeIcons.facebookF,
                      url: "https://www.facebook.com/GGAREDSTAR"),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.instagram,
                      clr: Colors.pinkAccent,
                      url: "https://www.instagram.com/ggaofficial/"),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.spotify,
                      clr: Colors.green,
                      url:
                          "https://open.spotify.com/artist/3Ofbm810VXiC3VaO76oMPP"),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.youtube,
                      clr: Colors.red,
                      url:
                          'https://www.youtube.com/channel/UCEaQBiiuwbn_UG64vCq04dA'),
                  const SizedBox(
                    height: 10,
                  )
                ]),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
