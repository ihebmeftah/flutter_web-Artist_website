class Album {
  String? name;
  int? nbTrack;
  String? albumCover;
  Album({
    this.name,
    this.nbTrack,
    this.albumCover,
  });
}

class Track {
  String? trackName;
  Album? fromAlbum;
  Track({
    this.trackName,
    this.fromAlbum,
  });
}

final List<Track> tracks = [
  Track(
      trackName: "Ech Mazel Feat JenJoon",
      fromAlbum: Album(
          name: "khrafa",
          nbTrack: 8,
          albumCover:
              "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/127705874_101646125133584_1013671367556110948_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=e3f864&_nc_ohc=kY2HDTY_PZgAX90HgaN&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun7-1.fna&oh=00_AT-ea3MwMpB08nQPos7810nbctC24UMDrda99VBe47sOeg&oe=6251EE64")),
  Track(
      trackName: "Famma Mennou Feat 4lfa",
      fromAlbum: Album(
          name: "khrafa",
          nbTrack: 8,
          albumCover:
              "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/127705874_101646125133584_1013671367556110948_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=e3f864&_nc_ohc=kY2HDTY_PZgAX90HgaN&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun7-1.fna&oh=00_AT-ea3MwMpB08nQPos7810nbctC24UMDrda99VBe47sOeg&oe=6251EE64")),
];
