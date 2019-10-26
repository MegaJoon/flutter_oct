class ItemList {
  // UI
  String image;
  String name;
  String age;
  String job;
  String distance;
  // favorite icon click
  bool isSelected;

  ItemList(
      {this.image,
      this.name,
      this.age,
      this.job,
      this.distance,
      this.isSelected});
}

List<ItemList> itemList = [
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2019/07/03/19/50/capricorn-4315367__340.jpg",
      name: "Olivia",
      age: "24",
      job: "Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2019/10/11/12/33/make-up-4541782__340.jpg",
      name: "Adrienne",
      age:"24",
      job:"Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2015/09/26/13/25/halloween-959049__340.jpg",
      name: "Barbara",
      age:"24",
      job:"Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2019/10/24/00/43/dock-4573120__340.jpg",
      name: "Charlotte",
      age:"24",
      job:"Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2019/07/03/19/50/capricorn-4315367__340.jpg",
      name: "Olivia",
      age:"24",
      job:"Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2019/10/11/12/33/make-up-4541782__340.jpg",
      name: "Adrienne",
      age:"24",
      job:"Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2015/09/26/13/25/halloween-959049__340.jpg",
      name: "Barbara",
      age:"24",
      job:"Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
  ItemList(
      image:
          "https://cdn.pixabay.com/photo/2019/10/24/00/43/dock-4573120__340.jpg",
      name: "Charlotte",
      age:"24",
      job:"Photographer",
      distance: "6 KM AWAY".toUpperCase(),
      isSelected: false),
];
