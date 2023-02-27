//homedetail sayfasının itemleri
class Items {
  final String imgH;
  final String titleH;
  final String subTitleH;

  Items({
    required this.imgH,
    required this.titleH,
    required this.subTitleH,
  });
}

List<Items> listOfItems = [
  Items(
    imgH: "assets/homepagePicture/amsterdam.png",
    titleH: "Amsterdam",
    subTitleH:"Amsterdam açıklaması.",
  ),
  Items(
    imgH: "assets/homepagePicture/Antalya.png",
    titleH: "Antalya",
    subTitleH:"açıklama.",
  ),
  Items(
    imgH: "assets/homepagePicture/onboard3.png",
    titleH: "Arjentina",
    subTitleH: "açıklama",
  ),
];
