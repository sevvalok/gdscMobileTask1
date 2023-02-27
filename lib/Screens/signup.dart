import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:untitled1/items/item1.dart';
import '../colors/color1.dart';
import '../items/icon.items.dart';
import 'home_page.dart';
import 'login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: gWidth,
          height: gHeight,
          child: Column(
            children:  const [
              KayitolYazisiVeGriKisim(),
              SizedBox(height: 150),
              isimGiriniz(),
              SizedBox(height: 20),
              EmailGiriniz(),
              SizedBox(height: 20),
              SifreniziGiriniz(),
              SizedBox(height: 30),
              KayitolButonu(),
              SizedBox(height: 10),
              HesabinvarmiGirisYap(),
            ],
          ),
        ),
      ),
    );
  }
}

//Hesabin var mı? Giris yap
class HesabinvarmiGirisYap extends StatelessWidget {
  const HesabinvarmiGirisYap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAll(()=> const LoginScreen(),
        transition: Transition.leftToRight);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        width: gWidth/2,
        height: gHeight/32,
        child: FittedBox(
          child: RichText(
            text: const TextSpan(
                text: "Hesabın var mı?",
                style: TextStyle(
                  color: MyColors.text1Color,
                ),
                children: [
                  TextSpan(
                    text: " Giriş yap",
                    style: TextStyle(
                      color: MyColors.titleTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
          ),
        ),

      ),
    );
  }
}

//Kayit ol butonu
class KayitolButonu extends StatelessWidget {
  const KayitolButonu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAll(()=> const HomePage(),
            transition: Transition.leftToRight);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: gWidth / 1.25,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(const LoginScreen());
          },
          child: const Text("Kayıt ol"),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
            backgroundColor: MaterialStateProperty.all(MyColors.buttonColor),
          ),
        ),
      ),
    );
  }
}

//SifreGirisi
class SifreniziGiriniz extends StatelessWidget {
  const SifreniziGiriniz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Filed(
        icon: LineIcons.alternateUnlock, text: "Şifreniz");
  }
}

//İsimGirisi
class isimGiriniz extends StatelessWidget {
  const isimGiriniz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Filed(icon: LineIcons.user, text: "İsminiz");
  }
}

//EmailGirisi
class EmailGiriniz extends StatelessWidget {
  const EmailGiriniz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Filed(icon: LineIcons.at, text: "Mailiniz");
  }
}

//Kayit ol Yazisi ve Gri Kisim
class KayitolYazisiVeGriKisim extends StatelessWidget {
  const KayitolYazisiVeGriKisim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: gWidth,
      height: gHeight / 4,
      color: Colors.grey.shade200,
      child: Container(
        margin: const EdgeInsets.only(top: 80, right: 250, left: 15),
        width: gWidth / 4,
        height: gHeight / 18,
        child: const FittedBox(
          child: Text(
            "Kayıt ol",
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}

