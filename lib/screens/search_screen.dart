import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_page/search_page.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQ = MediaQuery.of(context).size;
    return Container(
      height: _mediaQ.height,
      width: _mediaQ.width,
      padding: const EdgeInsets.fromLTRB(
        16,
        20,
        16,
        0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 39, left: 16, bottom: 45),
              child: Text(
                'Search',
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: _mediaQ.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
          ],
        ),
      ),
    );
  }
}
