import 'package:flutter/material.dart';

import '../change_name.dart';
import '../drawer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameEditingController = TextEditingController();
  var myText = "Change Me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: ChangeNameColumn(myText: myText, nameEditingController: _nameEditingController),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameEditingController.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.refresh),
      ),
      drawer: MyDrawer(),
    );
  }
}