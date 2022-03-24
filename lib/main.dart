import 'package:flutter/material.dart';
import 'package:flutter_essentials/screens/home_page.dart';
import 'package:flutter_essentials/screens/login_page.dart';
import 'package:flutter_essentials/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();
  
  runApp(MaterialApp(
    home: Constants.prefs!.getBool("loggedIn")==true ? MyApp() : LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => MyApp(),
    },
  ));
}
