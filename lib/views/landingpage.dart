import 'package:flutter/material.dart';
import 'package:pookie_chat/component/btnStyle.dart';
import 'package:pookie_chat/utils/Color.dart';
import 'package:pookie_chat/utils/Typography.dart';
import 'package:pookie_chat/views/login/loginpage.dart';
import 'package:pookie_chat/views/signup/signUp.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  ColorUtils colorUtils = ColorUtils();
  TypographyUtils typographyUtils = TypographyUtils();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorUtils.backgroundColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 44.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //
                Text(
                  "Connect Together With Your Friends",
                  textAlign: TextAlign.center,
                  style: TypographyUtils.heading2,
                ),

                SizedBox(height: 12),

                //
                Text(
                  "Login  to connecting with your friends",
                  style: TypographyUtils.textL_Regular,
                ),

                SizedBox(height: 12),

                //
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ),
                    );
                  },
                  style: btnStyle.copyWith(
                    minimumSize: WidgetStatePropertyAll(
                      Size(double.infinity, 52),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TypographyUtils.subHeading1.copyWith(
                      color: ColorUtils.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
