import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/login_page.dart';
import 'package:flutter_projects/utils/routes.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.s
  @override
  Widget build(BuildContext context) {
    // int days = 30;
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(), // iska  / ka matlab hi home h
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage()
      },
      //Required property for darktheme
    );
  }
}
