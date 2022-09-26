import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  String titleText;
  String imageIcon;
  HomeContainer({super.key, required this.titleText, required this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: Container(
        height: 100,
        width: 120,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xffc1cacb),
                Color(0xffececec),
              ],
            ),
            // color: Color(0xffFDC500),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(imageIcon)),
              const SizedBox(
                height: 10,
              ),
              Text(textAlign: TextAlign.center, titleText),
            ],
          ),
        ),
      ),
    );
  }
}
