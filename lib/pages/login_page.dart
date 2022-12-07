import 'package:flutter/material.dart';

import '../utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/img.jpg",
              fit: BoxFit.cover,
              // height: 300,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome ",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.homeRoute);
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(150, 40),
                    ),
                    child: Text("Login"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
