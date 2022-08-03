import 'package:first_app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:first_app/pages/login.dart';

void main() {
  runApp(harsh_first_app());
}

class harsh_first_app extends StatelessWidget {
  const harsh_first_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
      ),
      routes: {
        "/": (context) => login(),
        "login": (context) => login(),
      },
      // home: homepage(),
    );
  }
}
