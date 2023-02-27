import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/items/box.dart';
import 'package:untitled1/Screens/home_page.dart';
import 'package:untitled1/colors/color1.dart';

class favoritePage extends StatelessWidget {
  const favoritePage({Key? key}) : super(key: key);

  void main() {
    runApp(const MaterialApp(
      home: favoritePage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const navigationBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(products[0].image),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(products[0].title,),
          ),
        ],
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
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favoriler',
        ),
      ],
    );
  }
}
