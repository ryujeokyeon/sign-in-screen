import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_slicing/widgets/email_address_field.dart';
import 'package:latihan_slicing/widgets/login_button.dart';
import 'package:latihan_slicing/widgets/new_acc_button.dart';
import 'package:latihan_slicing/widgets/passwordV2_field.dart';

class ScreenV2 extends StatefulWidget {
  const ScreenV2({super.key});

  @override
  State<ScreenV2> createState() => _ScreenV2State();
}

class _ScreenV2State extends State<ScreenV2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: LayoutBuilder(builder: (context, boxConstraints) {
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
                    height: 34,
                  ),
                  Container(
                    width: 295,
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/a.png',
                      width: 245,
                      height: 279,
                    ),
                  ),
                  const SizedBox(
                    height: 53,
                  ),
                  Container(
                    width: 295,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email Address',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          color: const Color(0xff17171A),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const EmailAddressField(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 295,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          color: const Color(0xff17171A),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const PasswordV2(),
                  const SizedBox(
                    height: 50,
                  ),
                  const LoginBtn(),
                  const SizedBox(
                    height: 16,
                  ),
                  const CreateAccBtn(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
