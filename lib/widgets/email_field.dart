import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      alignment: Alignment.centerLeft,
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        textCapitalization: TextCapitalization.none,
        style: GoogleFonts.openSans(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF3F3F3),
            ),
            borderRadius: BorderRadius.circular(17),
          ),
          fillColor: const Color(0xff262A34),
          filled: true,
          labelText: 'Email',
          labelStyle: const TextStyle(
            fontSize: 14,
            color: Color(0xff6F7075),
          ),
        ),
      ),
    );
  }
}
