import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDiscoverItem extends StatelessWidget {
  const HomeDiscoverItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Column(children: [
        SizedBox(
          height: 90,
          width: 90,
          child: Image.asset('assets/1.png'),
        ),
        const SizedBox(height: 10),
        Text('Song Name',
            style:
                GoogleFonts.openSans(fontSize: 9, fontWeight: FontWeight.bold)),
        Text('Song description',
            style:
                GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.w300))
      ]),
    );
  }
}
