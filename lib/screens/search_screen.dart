import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_page/search_page.dart';
import 'package:spotify/widgets/search_top_genres.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQ = MediaQuery.of(context).size;
    return Container(
      height: _mediaQ.height,
      width: _mediaQ.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 39, bottom: 18),
              child: Text(
                'Search',
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              // the child would be row if empty els contain search delegate
              padding: const EdgeInsets.all(9),
              width: _mediaQ.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              // the child would be row if empty els contain search delegate
              child: Row(
                children: [
                  Image.asset('assets/Search.png'),
                  const SizedBox(width: 20),
                  Text(
                    'Artists, songs, or podcasts',
                    style: GoogleFonts.openSans(
                        color: const Color.fromRGBO(18, 18, 18, 0.7)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Your top genres',
                style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // grid
            Container(
              height: 150,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return SearchTopGenres();
                  }),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Browse all',
                style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // grid
            // Container(
            //   padding: const EdgeInsets.symmetric(vertical: 20),
            //   height: _mediaQ.height * .4,
            //   child:
            // )
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 23,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  // return custom geners
                  return SearchTopGenres();
                }),
          ],
        ),
      ),
    );
  }
}
