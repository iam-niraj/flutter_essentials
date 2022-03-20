import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          padding:const EdgeInsets.all(8),
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
             color: Colors.amber,
             gradient: LinearGradient(
               colors: [
                 Colors.yellow,
                 Colors.pink
               ]),

               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.shade400,
                   blurRadius: 5,
                   offset: Offset(2.0, 5.0)
                 )
               ]
          ),
            child: Text("Hello from My App",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
             fontSize: 20,
             fontWeight: FontWeight.bold
            ),)
        ),
      ),
    );
  }
}

