import 'package:flutter/material.dart';
import 'package:spotify/screens/home_selected.dart';
import 'package:spotify/screens/library_screen.dart';
import 'package:spotify/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const route = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentpage = 0;

  List<Widget> _screens = [
    HomeSelected(),
    SearchScreen(),
    Library(),
  ];

  void _onTapIndex(int val) {
    setState(() {
      _currentpage = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentpage),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentpage,
        onTap: _onTapIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          )
        ],
      ),
    );
  }
}
