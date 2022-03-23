import 'package:flutter/material.dart';

class Bg_Image extends StatelessWidget {
  const Bg_Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/self.jpg",
      fit: BoxFit.cover,
    );
  }
}
