import 'package:first_app/pages/homepage.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:first_app/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_app/utils/Routes.dart';

void main() {
  runApp(harsh_first_app());
}

class harsh_first_app extends StatelessWidget {
  const harsh_first_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //themeMode: ThemeMode.dark,
      darkTheme: Mytheme.darkTheme(context),
      theme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: AllRoutes.homeroute,
      routes: {
        "/": (context) => login(),
        AllRoutes.loginroute: (context) => login(),
        AllRoutes.homeroute: (context) => homepage(),
      },
      // home: homepage(),
    );
  }
}
