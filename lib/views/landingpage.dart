import 'package:flutter/material.dart';
import 'package:pookie_chat/utils/Color.dart';
import 'package:pookie_chat/views/login/loginpage.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  ColorUtils colorUtils = ColorUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Connect Together With Your Friends",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorUtils.tertiaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
