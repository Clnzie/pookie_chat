import 'package:flutter/material.dart';
import 'package:pookie_chat/component/btnStyle.dart';
import 'package:pookie_chat/utils/Color.dart';
import 'package:pookie_chat/utils/Typography.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //kartu_utomo
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20.0, 32.0, 20.0, 24.0),
                  decoration: BoxDecoration(
                    color: ColorUtils.primaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      //Iki jwudul e cik "Pookie Chat"
                      Text(
                        "Pookie Chat",
                        style: TypographyUtils.heading1.copyWith(
                          color: ColorUtils.tertiaryColor,
                        ),
                      ),
                      const SizedBox(height: 28),

                      //Nginput Username
                      TextField(
                        controller: _usernameController,
                        style: TypographyUtils.subHeading2.copyWith(
                          color: ColorUtils.tertiaryColor,
                        ),
                        cursorColor: ColorUtils.btnColor,
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TypographyUtils.textL_Medium.copyWith(
                            color: ColorUtils.tertiaryColor.withValues(alpha: 0.6),
                          ),
                          prefixIcon: const Icon(
                            Icons.person_outline_rounded,
                            color: ColorUtils.tertiaryColor,
                            size: 22,
                          ),
                          filled: true,
                          fillColor: ColorUtils.secondaryColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18.0,
                            horizontal: 16.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      //Nginput Password
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        style: TypographyUtils.subHeading2.copyWith(
                          color: ColorUtils.tertiaryColor,
                        ),
                        cursorColor: ColorUtils.btnColor,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TypographyUtils.textL_Medium.copyWith(
                            color: ColorUtils.tertiaryColor.withValues(alpha: 0.6),
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined,
                              color: ColorUtils.tertiaryColor,
                              size: 22,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                          filled: true,
                          fillColor: ColorUtils.secondaryColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18.0,
                            horizontal: 16.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      //Perkedel Log In
                      ElevatedButton(
                        onPressed: () {
                          // Handle Login
                        },
                        style: btnStyle.copyWith(
                          minimumSize: const WidgetStatePropertyAll(
                            Size(double.infinity, 52),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "Log In",
                          style: TypographyUtils.subHeading1.copyWith(
                            color: ColorUtils.primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      //divider "OR"
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: ColorUtils.tertiaryColor.withValues(alpha: 0.25),
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Text(
                              "OR",
                              style: TypographyUtils.textL_Medium.copyWith(
                                color: ColorUtils.tertiaryColor.withValues(alpha: 0.7),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: ColorUtils.tertiaryColor.withValues(alpha: 0.25),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      //Perkedel Login with Google
                      ElevatedButton(
                        onPressed: () {
                          // Handle Google Login
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorUtils.secondaryColor,
                          elevation: 0,
                          minimumSize: const Size(double.infinity, 52),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildGoogleIcon(),
                            const SizedBox(width: 10),
                            Text(
                              "Login with Google",
                              style: TypographyUtils.textL_Bold.copyWith(
                                color: ColorUtils.tertiaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),

                      //Lali password
                      TextButton(
                        onPressed: () {
                          // Handle forgot password
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          "Forgot password ?",
                          style: TypographyUtils.textL_Medium.copyWith(
                            color: ColorUtils.tertiaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                //Kwartu Sign Up
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  decoration: BoxDecoration(
                    color: ColorUtils.secondaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don’t have an account? ",
                        style: TypographyUtils.textL_Regular.copyWith(
                          color: ColorUtils.backgroundColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign up",
                            style: TypographyUtils.textL_Bold.copyWith(
                              color: ColorUtils.tertiaryColor,
                            ),
                          ),
                        ],
                      ),
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

  //ikontol gugel
  Widget _buildGoogleIcon() {
    return Image.asset(
      'Assets/img/google_icon.png',
      width: 22,
      height: 22,
      fit: BoxFit.contain,
    );
  }
}
