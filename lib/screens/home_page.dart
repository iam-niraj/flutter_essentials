import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameEditingController = TextEditingController();
  var myText = "Change Me";
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(url);
    //print(res.body);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index]["title"]),
                      leading: Image.network(data[index]["url"]),
                      subtitle: Text("ID: ${data[index]["id"]}"),
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameEditingController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      drawer: MyDrawer(),
    );
  }
}
