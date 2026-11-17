import 'package:flutter/material.dart';
import 'package:pookie_chat/component/btnStyle.dart';
import 'package:pookie_chat/utils/Color.dart';
import 'package:pookie_chat/utils/Typography.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  ColorUtils colorUtils = ColorUtils();
  TypographyUtils typographyUtils = TypographyUtils();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorUtils.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorUtils.primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  // Title
                  Text("Pookie Chat", style: TypographyUtils.heading1),
                  SizedBox(height: 10),
                  Text(
                    "Sign up to connection with your friends",
                    style: TypographyUtils.textL_Medium,
                  ),
                  SizedBox(height: 26),

                  ElevatedButton(
                    onPressed: () {},
                    style: btnStyle.copyWith(
                      minimumSize: WidgetStatePropertyAll(
                        const Size(double.infinity, 44),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        ColorUtils.secondaryColor,
                      ),
                    ),

                    // Sign up with Google button
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/img/goggle logo.png"),
                            ),
                          ),
                        ),
                        Text(
                          "Sign Up with Google",
                          style: TypographyUtils.textL_Medium,
                        ),
                      ],
                    ),
                  ),

                  // Decision line with "Or" text
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 26.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: ColorUtils.tertiaryColor,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 21.0),
                          child: Text("Or", style: TypographyUtils.subHeading2),
                        ),
                        Expanded(
                          child: Divider(
                            color: ColorUtils.tertiaryColor,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // If user already have an account, then show the sign in button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 12.0,
                    ),
                    width: double.infinity,
                    height: 42,
                    decoration: BoxDecoration(
                      color: ColorUtils.secondaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an Account?",
                          textAlign: TextAlign.center,
                          style: TypographyUtils.textL_Medium.copyWith(
                            color: ColorUtils.backgroundColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: WidgetStatePropertyAll<EdgeInsets>(
                              EdgeInsets.zero,
                            ),
                          ),
                          child: Text(
                            "Sign In",
                            style: TypographyUtils.textL_Bold.copyWith(
                              color: ColorUtils.tertiaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
