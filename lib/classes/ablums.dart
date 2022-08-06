import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AblumObject extends StatelessWidget {
  AblumObject({
    Key? key,
    required this.ablumName,
    required this.ablumArtist,
    required this.image,
    required this.list,

  }) : super(key: key);
  final String ablumName;
  final String ablumArtist;
  final String image;
  bool download = false;
  bool pinned = false;
  List songs = [];
  bool list;

  //
  final _artistText = GoogleFonts.openSans(
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );

  final _ablumText = GoogleFonts.openSans(
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );
  @override
  Widget build(BuildContext context) {
    return list
        ? Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              children: [
                Container(
                  color: Colors.green,
                  height: 80,
                  width: 80,
                  margin: const EdgeInsets.only(right: 15),
                  child: Text(image),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ablumArtist,
                          style: _artistText,
                        ),
                        Row(
                          children: [
                            download
                                ? Icon(Icons.download_for_offline,
                                    color: Colors.green[300])
                                : Container(),
                            Text(
                              ablumName,
                              style: _ablumText,
                            ),
                          ],
                        )
                      ]),
                )
              ],
            ),
          )
        : Container(
            height: 10,
            width: 10,
            color: Colors.blue,
            child: Column(children: [
              Container(
                color: Colors.green,
                height: 180,
                width: 200,
                margin: const EdgeInsets.only(right: 15),
                child: Text(image),
              ),
            ]),
          );
  }
}
