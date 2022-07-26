import 'package:flutter/material.dart';

class SearchTopGenres extends StatelessWidget {
  const SearchTopGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Navigator.pushNamed(context, routeName)
      },
      child: Container(
        color: Colors.deepOrange,
        height: 40,
        width: 50,
        padding: const EdgeInsets.only(top: 8, left: 10),
        child: const Text(
          'Genres',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
