import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool showPassword = false;

  @override
  void initState() {
    super.initState();
    showPassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      alignment: Alignment.centerLeft,
      child: TextField(
        obscureText: showPassword == false ? false : true,
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
          suffixIcon: IconButton(
            color: const Color(0xff6F7075),
            icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(
                () {
                  showPassword = !showPassword;
                },
              );
            },
          ),
          fillColor: const Color(0xff262A34),
          filled: true,
          labelText: 'Password',
          labelStyle: const TextStyle(
            fontSize: 14,
            color: Color(0xff6F7075),
          ),
        ),
      ),
    );
  }
}
