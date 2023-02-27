class Items {
  final String img;
  final String title;
  final String subTitle;

  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

 List<Items> listOfItems = [
  Items(
    img: "assets/onboard1.png",
    title: "Lorem İpsum1",
    subTitle:"Açıklama1",
   ),
  Items(
    img: "assets/onboard2.png",
    title: "Lorem İpsum2",
    subTitle:"Açıklama2",
   ),
  Items(
   img: "assets/onboard3.png",
   title: "Lorem İpsum3",
   subTitle: "Açıklama3",
   ),
];
