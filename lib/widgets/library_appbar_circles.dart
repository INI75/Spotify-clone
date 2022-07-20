import 'package:flutter/material.dart';

class LibraryAppBarChoice extends StatelessWidget {
  const LibraryAppBarChoice({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(2),
      alignment: Alignment.center,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: const Border(
          bottom: BorderSide(color: Colors.white54),
          left: BorderSide(color: Colors.white54),
          right: BorderSide(color: Colors.white54),
          top: BorderSide(color: Colors.white54),
        ),
      ),
      width: (50 + text.length * 5).toDouble(),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12),
        textAlign: TextAlign.justify,
        maxLines: 1,
      ),
    );
  }
}
