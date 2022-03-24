import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_essentials/bg_image.dart';
import 'package:flutter_essentials/screens/home_page.dart';
import 'package:flutter_essentials/utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Bg_Image(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter your Username",
                                    labelText: "Username"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter your Password",
                                    labelText: "Password"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    /* Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyApp())); */
                                    Constants.prefs?.setBool("loggedIn", true);

                                    Navigator.pushReplacementNamed(context, "/home");
                                  },
                                  child: Text("Sign In"),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.purpleAccent,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
