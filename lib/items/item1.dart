

//loginsignin sayfasının itemleri
import 'package:get/get.dart';
final gWidth = Get.width;
final gHeight = Get.height;
//

//onboard sayfasının itemleri
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
    img: "assets/onboardPicture/onboard1.png",
    title: "TravelBoard'ten gideceğin yeri seç",
    subTitle:"Uygulama üzerinden ilginizi çeken yeri seçin ve rezervasyon yapın.",
   ),
  Items(
    img: "assets/onboardPicture/onboard2.png",
    title: "Valizi al ve yola çık",
    subTitle:"Uygulamada bulunan kod ile turunu onaylat.",
   ),
  Items(
   img: "assets/onboardPicture/onboard3.png",
   title: "Her şey hazır",
   subTitle: "Yolculuk için her şey hazır, keyfine bak.",
   ),
];


