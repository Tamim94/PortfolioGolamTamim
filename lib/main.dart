import 'package:flutter/material.dart';
import 'package:portfolio_tamim/screens/home/home.dart';
import 'package:portfolio_tamim/screens/main/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_web/material.dart'
import 'package:firebase_core/firebase_core.dart'; //
//import 'firebase_options.dart'; // Generated file

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio Tamim',
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: TextStyle(color: bodyTextColor),
              bodyText2: TextStyle(color: bodyTextColor),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
