class Products {
  String? artist;
  String? nameProd;
  String? imhurl;

  double? price;
  Products({
    this.artist,
    this.nameProd,
    this.imhurl,
    this.price,
  });
}

List<Products> prod = [
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Classic Tee",
      price: 19.00,
      imhurl:
          "https://vangogh.teespring.com/v3/image/kv2eJrzyttUJWleRCAdkOL8hKII/800/800.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Premium Pullover Hoodie",
      price: 39.00,
      imhurl:
          "https://vangogh.teespring.com/v3/image/kv2eJrzyttUJWleRCAdkOL8hKII/800/800.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Classic Tee",
      price: 19.00,
      imhurl:
          "https://vangogh.teespring.com/v3/image/kv2eJrzyttUJWleRCAdkOL8hKII/800/800.jpg"),
  Products(
      artist: "REDSTAR RADI",
      nameProd: "Premium Pullover Hoodie",
      price: 39.00,
      imhurl:
          "https://vangogh.teespring.com/v3/image/kv2eJrzyttUJWleRCAdkOL8hKII/800/800.jpg")
];
