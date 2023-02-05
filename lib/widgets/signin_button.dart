import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInBtn extends StatelessWidget {
  const SignInBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: 295,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: const Color(
          0xffFCAC15,
        ),
      ),
      child: Text(
        'Sign In',
        style: GoogleFonts.lato(
            color: Color(0xff6B4909),
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
