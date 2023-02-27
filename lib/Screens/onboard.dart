import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

///
import '../colors/color1.dart';
import '../items/item1.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                                    style: textTheme.headlineMedium,
                                  ),
                                ),

                                Text(
                                  listOfItems[index].subTitle,
                                  textAlign: TextAlign.center,
                                  style: textTheme.headline6,
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
                              activeDotColor: MyColors.btnColor),
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
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 60, left: 200),
        width: size.width / 2.5,
        height: size.height / 15,
        decoration: BoxDecoration(
          color: MyColors.btnColor,
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
