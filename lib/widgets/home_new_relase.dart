import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNewRelase extends StatefulWidget {
  HomeNewRelase({Key? key}) : super(key: key);

  @override
  State<HomeNewRelase> createState() => _HomeNewRelaseState();
}

class _HomeNewRelaseState extends State<HomeNewRelase> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 19),
      child: Column(
        children: [
          Container(
              // margin: const EdgeInsets.only(right: 20),
              child: Row(
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/rdummy.jpg'),
              ),
              const SizedBox(width: 30),
              SizedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NEW RELEASE FROM',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(255, 255, 255, 0.7))),
                      Text('Dean Lewis',
                          style: GoogleFonts.openSans(
                            fontSize: 19,
                            fontWeight: FontWeight.w900,
                          )),
                    ]),
              )
            ],
          )),
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(children: [
              SizedBox(
                child: Image.asset('assets/newr.png', fit: BoxFit.fill),
                height: 150,
                width: 150,
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Text('Hurtless (Acoustic)',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(height: 8),
                  Text('Single  Dean Lewis',
                      style: GoogleFonts.openSans(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 0.7))),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // convert to icon button during logic build
                      IconButton(
                          icon: Icon(
                              _isFav
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              size: 30),
                          onPressed: () {
                            setState(() {
                              _isFav = !_isFav;
                            });
                          }),
                      Icon(Icons.play_circle_fill_outlined, size: 30)
                    ],
                  )
                ]),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
