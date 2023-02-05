import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_slicing/widgets/signin_button.dart';
import 'package:latihan_slicing/widgets/email_field.dart';
import 'package:latihan_slicing/widgets/password_field.dart';
import 'package:latihan_slicing/widgets/welcome_text.dart';

class ScreenV1 extends StatefulWidget {
  const ScreenV1({super.key});

  @override
  State<ScreenV1> createState() => _ScreenV1State();
}

class _ScreenV1State extends State<ScreenV1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: LayoutBuilder(
        builder: (context, boxConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: boxConstraints.maxHeight,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 295,
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/btn.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      // color: Colors.amber,
                      width: 295,
                      height: 72,
                      child: Text(
                        "Welcome back.\nLet's make money.",
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const EmailField(),
                    const SizedBox(
                      height: 20,
                    ),
                    const PasswordField(),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 295,
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot My Password',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff6A6B70),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 144,
                    ),
                    const SignInBtn(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "Don't have account?",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          " Sign Up",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
