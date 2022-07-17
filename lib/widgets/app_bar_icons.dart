import 'package:flutter/material.dart';

class HomeAppBarIcons extends StatelessWidget {
  const HomeAppBarIcons({
    Key? key,
    required this.icon,
    required this.function,
  }) : super(key: key);
  final String icon;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        height: 19,
        child: Image.asset('assets/$icon'),
      ),
    );
  }
}
