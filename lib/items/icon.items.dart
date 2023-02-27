import 'package:flutter/material.dart';
import 'package:untitled1/colors/color1.dart';
import 'package:untitled1/items/item1.dart';

class Filed extends StatelessWidget {
  final IconData icon;
  final String text;

  const Filed({super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: gHeight / 15,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              icon,
              color: MyColors.iconColor,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 50,
              width: gWidth / 1.3,
              child: TextField(
                readOnly: true,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                showCursor: true,
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  labelText: text,
                  labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
