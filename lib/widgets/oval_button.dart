import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OvalButton extends StatelessWidget {
  const OvalButton({
    Key? key,
    required this.buttonText,
    required this.function,
    required this.imageAdd,
  }) : super(key: key);
  final String buttonText;
  final String imageAdd;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (function),
      //
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white60),
        ),
        margin: const EdgeInsets.only(top: 7, bottom: 3),
        height: 44,
        width: 380,
        child: Row(children: [
          Container(
            width: 20,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/$imageAdd',
              //height: 30,
            ),
          ),
          Container(
            width: 340,
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: GoogleFonts.poppins(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
