import 'package:flutter/material.dart';


class HomeDiscoverItem extends StatelessWidget {
  const HomeDiscoverItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(children: [
        SizedBox(height: 40, width: 40, child: Image.asset('assets/1.png'),)
      ]),
    );
  }
}
