import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jusudev/ui/pages/home_page_wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'jusu.dev',
        theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(
                      displayColor: Colors.black,
                      bodyColor: Colors.black,
                    ))),
        home: HomePageWrapper());
  }
}
