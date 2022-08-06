import 'package:flutter/material.dart';
import 'package:spotify/screens/aut_screen.dart';
import 'package:spotify/screens/home_screen.dart';
import 'package:spotify/screens/songs_list_ablum_screen.dart';
import 'package:spotify/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

///    UI design
/// library designe,
///  provider design and implementation,
///  connecting api
///

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      title: 'Spotify',
      theme: ThemeData(
        fontFamily: 'Gotham',
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
            bodyText1:
                TextStyle(fontFamily: 'Gotham', fontWeight: FontWeight.bold)),
      ),
      home: const SplashScreen(),
      routes: {
        AutScreen.route: (context) => const AutScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
         AblumSongList.routeName: (context) =>  AblumSongList(),
      },
    );
  }
}
