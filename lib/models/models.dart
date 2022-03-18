class Products {
  String artist;
  String nameProd;
  String frontimhurl;
  String backimhurl;

  double? price;
  Products({
    required this.artist,
    required this.nameProd,
    required this.frontimhurl,
    required this.backimhurl,
    required this.price,
  });
}

List<Products> prod = [
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Premium Pullover Hoodie",
      price: 39.00,
      frontimhurl: "images/p1front.jpg",
      backimhurl: "images/p1back.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Classic Crewneck Sweatshirt",
      price: 29.00,
      frontimhurl: "images/p2front.jpg",
      backimhurl: "images/p2back.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Premium Pullover Hoodie",
      price: 49.00,
      frontimhurl: "images/p3front.jpg",
      backimhurl: "images/p3back.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Classic Tee",
      price: 19.00,
      frontimhurl: "images/p4front.jpg",
      backimhurl: "images/p4back.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Premium Pullover Hoodie",
      price: 39.00,
      frontimhurl: "images/p1front.jpg",
      backimhurl: "images/p1back.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Classic Crewneck Sweatshirt",
      price: 29.00,
      frontimhurl: "images/p2front.jpg",
      backimhurl: "images/p2back.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Premium Pullover Hoodie",
      price: 49.00,
      frontimhurl: "images/p3front.jpg",
      backimhurl: "images/p3back.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Classic Tee",
      price: 19.00,
      frontimhurl: "images/p4front.jpg",
      backimhurl: "images/p4back.jpg"),
];

class Track {
  String id;

  String trackname;
  String albumname;
  String views;
  Track({
    required this.id,
    required this.trackname,
    required this.albumname,
    required this.views,
  });
}

List<Track> ytb = [
  Track(
      id: "8oMfQeD_CXQ",
      trackname: "RedStar - intro",
      albumname: "Khrafa",
      views: '1.6M '),
  Track(
      id: "y7K3ZMrFqn8",
      trackname: "RedStar - Beb Blé",
      albumname: "Khrafa",
      views: '1.8M '),
  Track(
      id: "1vEcmTY3-y4",
      trackname: "RedStar - 10 Years",
      albumname: "Khrafa",
      views: '670k '),
  Track(
      id: "JrlOvPCVp-E",
      trackname: "RedStar - Ech Mazel Feat JenJoon",
      albumname: "Khrafa",
      views: '58M'),
  Track(
      id: "OW7VKnDOL88",
      trackname: "RedStar - Famma Mennou Feat 4LFA",
      albumname: "Khrafa",
      views: '2.2M'),
];
