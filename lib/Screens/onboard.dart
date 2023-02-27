import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled1/Screens/login.dart';

///
import '../../colors/color1.dart';
import '../../items/item1.dart';

void main() {
  runApp(const GetMaterialApp(
    home: OnboardPage(),
  ));
}

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  PageController pageController = PageController(initialPage: 0);
  int currentIntdex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                ///.................................
                Expanded(
                    flex: 3,
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: listOfItems.length,
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: (newVal) {
                          setState(() {
                            currentIntdex = newVal;
                          });
                        },
                        itemBuilder: (ctx, index) {
                          return SizedBox(
                            width: size.width,
                            height: size.height,
                            child: Column(
                              children: [
                                ///IMG
                                Container(
                                  margin: const EdgeInsets.fromLTRB(15, 40, 15, 10),
                                  width: size.width,
                                  height: size.height / 2.5,
                                  child: Image.asset(listOfItems[index].img),
                                ),

                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 20, bottom: 15),
                                  child: Text(
                                    listOfItems[index].title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: 'Kalam',
                                      fontSize: 30,
                                      fontStyle: FontStyle.normal,
                                      color: MyColors.buttonColor,
                                    ),
                                  ),
                                ),

                                Text(
                                  listOfItems[index].subTitle,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontFamily: 'Kalam',
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),

                ///.................................
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmoothPageIndicator(
                          effect: const ExpandingDotsEffect(
                              spacing: 6.0,
                              radius: 10.0,
                              dotWidth: 10.0,
                              dotHeight: 10.0,
                              expansionFactor: 3.9,
                              dotColor: Colors.grey,
                              activeDotColor: MyColors.buttonColor),
                          count: listOfItems.length,
                          controller: pageController,
                          onDotClicked: (newVal) {
                            setState(() {
                              currentIntdex = newVal;
                              pageController.animateToPage(newVal,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            });
                          },
                        ),

                        //........
                        currentIntdex == 2
                            ? GetStartBTN(size: size, textTheme: textTheme)
                            : Container()
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}

class GetStartBTN extends StatelessWidget {
  const GetStartBTN({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Get.offAll(()=> const LoginScreen(),
          transition: Transition.leftToRight);
    },
      child: Container(
        margin: const EdgeInsets.only(top: 60, left: 200),
        width: size.width / 2.5,
        height: size.height / 15,
        decoration: BoxDecoration(
          color: MyColors.buttonColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            "Oturum aç",
            style: textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
