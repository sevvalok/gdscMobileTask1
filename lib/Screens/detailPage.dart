import 'package:flutter/material.dart';
import 'package:untitled1/colors/color1.dart';
import 'package:untitled1/items/item1.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: gWidth,
        height: gHeight,
        child: Stack(
          children: const [
            detailImage(),
            geridonikonu(),
            beyazyuvarlaklialan(),
          ],
        ),
      ),
    );
  }
}

class beyazyuvarlaklialan extends StatelessWidget {
  const beyazyuvarlaklialan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 250,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        width: MediaQuery.of(context).size.width,
        height: 500,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: const [
            baslik(),
            SizedBox(
              height: 5,
            ),
            yildizlar(),
            SizedBox(height: 20,),
            aciklamayazisi(),
            SizedBox(height: 10,),
            aciklamayazisiicerik(),
            SizedBox(height: 10,),
            satinalbutonu(),
          ],
        ),
      ),
    );
  }
}

class satinalbutonu extends StatelessWidget {
  const satinalbutonu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
          width: gWidth / 1.25,
          height: gHeight / 15,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              backgroundColor: MaterialStateProperty.all(
                  MyColors.buttonColor),
            ),
            child: const Text("Satın al"),
          ),
        ),
      ],
    );
  }
}

class aciklamayazisiicerik extends StatelessWidget {
  const aciklamayazisiicerik({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          flex: 1,
          child: Text(
            "Hollanda'nın başkenti Amsterdam, Avrupa'nın en çok ziyaretçi alan şehirlerinden. Hareketli gece yaşantısı, kanallarla çevrili hoş sokakları, yerel tatları, çok iyi korunmuş mimari yapıları, zengin koleksiyona sahip müzeleri, yemyeşil park ve bahçeleri ve insana değer veren şehir yapısı Amsterdam'ı ziyaret etmek için en önemli sebepler arasında.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

class aciklamayazisi extends StatelessWidget {
  const aciklamayazisi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Açıklama",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class yildizlar extends StatelessWidget {
  const yildizlar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Wrap(
          children: List.generate(5, (index) {
            return Icon(Icons.star,
                color: MyColors.yildizsarisi);
          }),
        ),
      ],
    );
  }
}

class baslik extends StatelessWidget {
  const baslik({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Amsterdam",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Text(
          "                          \$2500",
          style: TextStyle(
            fontSize: 25,
            color: MyColors.buttonColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class geridonikonu extends StatelessWidget {
  const geridonikonu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 30,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              autofocus: true,
              iconSize: 40,
              icon: const Icon(Icons.chevron_left),
              color: Colors.black,
            )
          ],
        ));
  }
}

class detailImage extends StatelessWidget {
  const detailImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        width: gWidth / 0.5,
        height: gHeight / 1.75,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homePagePicture/amsterdam.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
