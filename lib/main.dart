import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/Screens/detailPage.dart';
import 'package:untitled1/Screens/onboard.dart';

import 'Screens/favoritePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI - Flutter',
      home: OnboardPage(),
    );
  }
}
