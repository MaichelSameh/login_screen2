import 'package:flutter/material.dart';

import 'signIn.dart';
import 'signUp.dart';
import 'size.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  final Color headColor = Color.fromRGBO(0, 152, 153, 1);

  @override
  Widget build(BuildContext context) {
    Size size = new Size(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white.withOpacity(0.7), Colors.white],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildGestureDetector(context, size, "Sign In", SignIn()),
            SizedBox(height: size.height(50)),
            buildGestureDetector(context, size, "Sign Up", SignUp()),
          ],
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector(
      BuildContext context, Size size, String text, Widget to) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => to),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset.fromDirection(size.height(1), size.height(3)),
                spreadRadius: size.height(3),
                blurRadius: size.height(8)),
          ],
          borderRadius: BorderRadius.circular(
            size.height(10),
          ),
          color: Colors.black,
        ),
        height: size.height(50),
        margin: EdgeInsets.symmetric(
          horizontal: size.width(30),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: size.font(20),
          ),
        ),
      ),
    );
  }
}
