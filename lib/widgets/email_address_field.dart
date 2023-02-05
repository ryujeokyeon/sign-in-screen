import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailAddressField extends StatefulWidget {
  const EmailAddressField({super.key});

  @override
  State<EmailAddressField> createState() => _EmailAddressFieldState();
}

class _EmailAddressFieldState extends State<EmailAddressField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      alignment: Alignment.centerLeft,
      child: TextField(
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
