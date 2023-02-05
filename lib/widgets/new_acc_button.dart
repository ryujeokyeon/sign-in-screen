import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// final ButtonStyle btnPrimary = ElevatedButton.styleFrom(
//     // minimumSize: Size(390, 55),
//     // primary:
//     );

class CreateAccBtn extends StatefulWidget {
  const CreateAccBtn({super.key});

  @override
  State<CreateAccBtn> createState() => _CreateAccBtnState();
}

class _CreateAccBtnState extends State<CreateAccBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: 320,
      // decoration: InputDecoration(
      //     border: OutlineInputBorder(
      //       borderSide: const BorderSide(
      //         color: Color(0cxffF3F3F3),
      //       ),
      //       borderRadius: BorderRadius.circular(71),
      //     ),
      //   ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Color(0xffE5E5E5),
          fixedSize: Size(390, 55),
          side: BorderSide(
            color: Color(0xffF3F3F3),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
        ),
        child: Text(
          'Create New Account',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              color: const Color(0xffCFCFCF),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
