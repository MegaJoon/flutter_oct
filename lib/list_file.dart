class Genre {
  String image;
  String mood;

  Genre({this.image, this.mood});
}

List<Genre> genre = [
  Genre(
      image:
      "https://cdn.pixabay.com/photo/2019/09/30/19/20/caravansary-4516601_960_720.jpg",
      mood: "Pop"),
  Genre(
      image:
      "https://cdn.pixabay.com/photo/2019/09/27/12/39/landscape-4508444__340.jpg",
      mood: "EDM"),
  Genre(
      image:
      "https://cdn.pixabay.com/photo/2019/09/21/09/28/volcano-4493461__340.jpg",
      mood: "Accoustic"),
];

class Song {
  String image;
  String name;
  String singer;
  String time;

  Song({this.image, this.name, this.singer, this.time});
}

List<Song> song = [
  Song(
      image:
      "https://cdn.pixabay.com/photo/2019/07/13/14/20/wolf-4334874__340.jpg",
      name: "SomeboHHdy out THHhere",
      singer: "AAA DDet To The Moon",
      time: "3.29"),
  Song(
      image:
      "https://cdn.pixabay.com/photo/2019/09/27/20/40/houses-4509404__340.jpg",
      name: "LHHose HYourHHself",
      singer: "EEEmDDnem",
      time: "5.20"),
  Song(
      image:
      "https://cdn.pixabay.com/photo/2018/07/12/11/13/fresh-3533085__340.jpg",
      name: "CrossfireH",
      singer: "Stedddn",
      time: "4.30"),
  Song(
      image:
      "https://cdn.pixabay.com/photo/2019/09/26/06/26/face-4505196__340.jpg",
      name: "HushHh",
      singer: "ACCZDDVA",
      time: "3.00"),
];
