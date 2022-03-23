import 'package:flutter/material.dart';

import 'bg_image.dart';

class ChangeNameColumn extends StatelessWidget {
  const ChangeNameColumn({
    Key? key,
    required this.myText,
    required TextEditingController nameEditingController,
  }) : _nameEditingController = nameEditingController, super(key: key);

  final String myText;
  final TextEditingController _nameEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Bg_Image(),
      /* Image.asset(
        "assets/images/self.jpg",
        fit: BoxFit.cover,
      ), */
      SizedBox(
        height: 20,
      ),
      Text(
        myText,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          // keyboardType: TextInputType.number,
          controller: _nameEditingController,
          decoration: InputDecoration(
              hintText: "Enter Your Name",
              labelText: "Name",
              border: OutlineInputBorder()),
        ),
      ),
    ]);
  }
}
