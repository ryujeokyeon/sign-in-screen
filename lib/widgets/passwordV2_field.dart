import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordV2 extends StatefulWidget {
  const PasswordV2({super.key});

  @override
  State<PasswordV2> createState() => _PasswordV2State();
}

class _PasswordV2State extends State<PasswordV2> {
  bool showPassword = false;

  @override
  void initState() {
    super.initState();
    showPassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      alignment: Alignment.centerLeft,
      child: TextField(
        obscureText: showPassword == false ? false : true,
        onTap: () {
          setState(
            () {
              showPassword = !showPassword;
            },
          );
        },
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        textCapitalization: TextCapitalization.none,
        style: GoogleFonts.openSans(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF3F3F3),
            ),
            borderRadius: BorderRadius.circular(71),
          ),
        ),
      ),
    );
  }
}
