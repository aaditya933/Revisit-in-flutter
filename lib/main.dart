import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.s
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(), // iska  / kamatlab hi home h
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
      //Required property for darktheme
    );
  }
}
