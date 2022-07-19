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

  ///
  final List<Widget> _screens = [
    const HomeSelected(),
    const SearchScreen(),
    const Library(),
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
        selectedFontSize: 9,
        unselectedFontSize: 9,
        backgroundColor: Colors.black,
        currentIndex: _currentpage,
        onTap: _onTapIndex,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              _currentpage == 0
                  ? const AssetImage('assets/home_on.png')
                  : const AssetImage('assets/home_off.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              _currentpage == 1
                  ? const AssetImage('assets/search_on.png')
                  : const AssetImage('assets/search_off.png'),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              _currentpage == 2
                  ? const AssetImage('assets/library_on.png')
                  : const AssetImage('assets/library_off.png'),
            ),
            label: 'Library',
          )
        ],
      ),
    );
  }
}
