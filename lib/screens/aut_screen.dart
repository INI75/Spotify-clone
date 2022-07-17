import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/screens/home_screen.dart';
import 'package:spotify/widgets/oval_button.dart';

class AutScreen extends StatefulWidget {
  static const route = '/aut_screen';
  const AutScreen({Key? key}) : super(key: key);

  @override
  State<AutScreen> createState() => _AutScreenState();
}

class _AutScreenState extends State<AutScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          // margin: const EdgeInsets.only(top: 20),
          alignment: Alignment.topCenter,
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: Opacity(
            alwaysIncludeSemantics: true,
            opacity: .65,
            child: Image.asset('assets/spot_artist.jpg',
                width: mediaQuery.width,
                fit: BoxFit.fitWidth,
                height: mediaQuery.height * .4),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: mediaQuery.height * .29,
                  width: mediaQuery.width,
                ),
                SizedBox(
                  child: Image.asset('assets/whiteLogo.png', height: 78),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: const Text('Millions of songs\nFree on Spotify.',
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(HomeScreen.route),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(380, 44)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(76, 175, 80, 1)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  child: Text(
                    'Sign up free',
                    style: GoogleFonts.poppins(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                OvalButton(
                    buttonText: 'Continue with phone number',
                    function: () {},
                    imageAdd: 'phone.png'),
                OvalButton(
                    buttonText: 'Continue with google',
                    function: () {},
                    imageAdd: 'Google.png'),
                OvalButton(
                    buttonText: 'Continue with facebook',
                    function: () {},
                    imageAdd: 'Facebook.png'),
                const SizedBox(height: 10),
                TextButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(HomeScreen.route),
                    child: Text(
                      'Log in',
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
        )
      ]),
      //
    );
  }
}
