import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:untitled1/Screens/detailPage.dart';
import 'package:untitled1/colors/color1.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navigationBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 25),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                selamyazisi(),
                SizedBox(height: 1),
                bugunnereyeyazisi(),
                SizedBox(height: 5),
                tatilresmi(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class navigationBar extends StatelessWidget {
  const navigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 35,
      fixedColor: Colors.black,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),
          label: 'Favoriler',
        ),
      ],
    );
  }
}

class tatilresmi extends StatelessWidget {
  const tatilresmi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAll(()=> const DetailPage(),
            transition: Transition.leftToRight);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1),
        height: 500,
        width: 600,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          makeItem(
              image: 'assets/homePagePicture/amsterdam.jpg',
              title: 'Amsterdam'),
          makeItem(
              image: 'assets/homePagePicture/Arjentina.jpg',
              title: 'Arjentina'),
          makeItem(
              image: 'assets/homePagePicture/Gonoda,Rusya.jpg',
              title: 'Gonoda,Rusya'),
          makeItem(
              image: 'assets/homePagePicture/Antalya.jpg', title: 'Antalya'),
          makeItem(
              image: 'assets/homePagePicture/ispanya.jpg', title: 'İspanya'),
          makeItem(image: 'assets/homePagePicture/italy.jpg', title: 'İtalya'),
          makeItem(
              image: 'assets/homePagePicture/Japonya.jpg', title: 'Japonya'),
          makeItem(
              image: 'assets/homePagePicture/Las Vegas.jpg',
              title: 'Las Vegas'),
          makeItem(
              image: 'assets/homePagePicture/Newyork.jpg', title: 'New York'),
          makeItem(image: 'assets/homePagePicture/misir.jpg', title: 'Mısır'),
        ]),
      ),
    );
  }
}

Widget makeItem({image, title}) {
  return InkWell(
    onTap: () {},
    child: AspectRatio(
      aspectRatio: 1 / 1.4,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class bugunnereyeyazisi extends StatelessWidget {
  const bugunnereyeyazisi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Bugün nereye gitmek istersin?",
      style: TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
      textAlign: TextAlign.start,
    );
  }
}

class selamyazisi extends StatelessWidget {
  const selamyazisi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Merhaba 'kullaniciismi'",
      style: TextStyle(
        color: MyColors.buttonColor,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
