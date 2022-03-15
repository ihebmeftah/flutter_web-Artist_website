import 'package:flutter/material.dart';
import 'package:flutter_web/views/components/components.dart';
import 'package:flutter_web/views/theme/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                  platforme(icn: FontAwesomeIcons.facebookF),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.instagram, clr: Colors.pinkAccent),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(icn: FontAwesomeIcons.spotify, clr: Colors.green),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(icn: FontAwesomeIcons.youtube, clr: Colors.red),
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
                  platforme(icn: FontAwesomeIcons.facebookF),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(
                      icn: FontAwesomeIcons.instagram, clr: Colors.pinkAccent),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(icn: FontAwesomeIcons.spotify, clr: Colors.green),
                  const SizedBox(
                    height: 10,
                  ),
                  platforme(icn: FontAwesomeIcons.youtube, clr: Colors.red),
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
