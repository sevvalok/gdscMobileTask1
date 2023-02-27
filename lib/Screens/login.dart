import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/Screens/home_page.dart';
import 'package:untitled1/Screens/signup.dart';
import 'package:untitled1/colors/color1.dart';
import 'package:untitled1/items/icon.items.dart';
import 'package:untitled1/items/item1.dart';
import 'package:line_icons/line_icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: gWidth,
          height: gHeight,
          child: Column(
            children: const [
              GirisYazisiVeGriKisim(),
              SizedBox(height: 150),
              EmailGiriniz(),
              SizedBox(height: 20),
              SifreniziGiriniz(),
              SizedBox(height: 20),
              GirisYapButonu(),
              SizedBox(height: 20),
              SifremiUnuttum(),
              HesabinYokmuKayitOl(),
            ],
          ),
        ),
      ),
    );
  }
}


//Hesabin yok mu kayit ol
class HesabinYokmuKayitOl extends StatelessWidget {
  const HesabinYokmuKayitOl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAll(()=> const SignUpScreen(),
        transition: Transition.leftToRight);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        width: gWidth/2,
        height: gHeight/32,
        child: FittedBox(
          child: RichText(
            text: const TextSpan(
              text: "Hesabın yok mu?",
              style: TextStyle(
                color: MyColors.text1Color,
              ),
              children: [
                TextSpan(
                  text: " Kayıt ol",
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

//Giris yap butonu
class GirisYapButonu extends StatelessWidget {
  const GirisYapButonu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: gWidth / 1.25,
      height: gHeight / 15,
      child: ElevatedButton(
        onPressed: () {
          Get.offAll(const HomePage());
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
          ),
          backgroundColor: MaterialStateProperty.all(MyColors.buttonColor),
        ),
        child: const Text("Giriş Yap"),
      ),
    );
  }
}

//SifremiUnuttum
class SifremiUnuttum extends StatelessWidget {
  const SifremiUnuttum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      width: gWidth / 3.7,
      height: gHeight / 32,
      child: const FittedBox(
        child: Text(
          "Şifremi unuttum",
          style: TextStyle(
            color: MyColors.text1Color,
            fontWeight: FontWeight.w500,
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
        icon: LineIcons.alternateUnlock, text: "Şifre");
  }
}

//EmailGirisi
class EmailGiriniz extends StatelessWidget {
  const EmailGiriniz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Filed(icon: LineIcons.at, text: "E-mailiniz");
  }
}

//Giris Yazisi ve Gri Kisim
class GirisYazisiVeGriKisim extends StatelessWidget {
  const GirisYazisiVeGriKisim({
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
            "Giriş yap",
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
