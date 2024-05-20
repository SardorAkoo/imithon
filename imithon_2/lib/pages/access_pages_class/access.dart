import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AccessHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logo.png',
          height: 66.67,
          width: 66.67,
        ),
        Text(
          'Speaker.',
          style: GoogleFonts.lobster(
            fontSize: 29,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text('Your Person launguage',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            )),
        const Text(
          'learning tutor',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Color.fromRGBO(0, 122, 255, 1),
              radius: 8,
            ),
            SizedBox(
              width: 16,
            ),
            CircleAvatar(
              backgroundColor: Color.fromRGBO(0, 122, 255, 1),
              radius: 8,
            ),
            SizedBox(
              width: 16,
            ),
            CircleAvatar(
              backgroundColor: Color.fromRGBO(0, 122, 255, 1),
              radius: 8,
            ),
          ],
        )
      ],
    );
  }
}
