class Receipt {
  String title;
  String image;
  String price;
  String tag;
  String tag2;
  String content;
  bool allocated;

  Receipt({this.title, this.image, this.price, this.tag, this.tag2, this.content, this.allocated});
}

List<Receipt> receipt = [
  Receipt(
      title: "Birmingham Meeting",
      image: "https://cdn.pixabay.com/photo/2019/10/02/14/09/jam-4521023__340.jpg",
      price: "£35.50",
      tag: "Travel",
      tag2: "Food",
      content: "veniam, quls nostrud exercitation\nlaboris nisl ut allquip ex ea",
      allocated: true),
  Receipt(
      title: "Interview with Jackson",
      image: "https://cdn.pixabay.com/photo/2019/10/02/16/56/landscape-4521413__340.jpg",
      price: "£35.50",
      tag: "Travel",
      tag2: "Food",
      content: "veniam, quls nostrud exercitation\nlaboris nisl ut allquip ex ea",
      allocated: true),
  Receipt(
      title: "Offsite training",
      image: "https://cdn.pixabay.com/photo/2019/09/30/14/51/squirrel-4515962__340.jpg",
      price: "45.50",
      tag: "Travel",
      tag2: "Food",
      content: "veniam, quls nostrud exercitation\nlaboris nisl ut allquip ex ea",
      allocated: false),
];