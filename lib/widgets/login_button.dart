import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: const Color(0xff5468FF),
      ),
      child: Text(
        'Log In',
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
            color: const Color(0xffF8F8F8),
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
