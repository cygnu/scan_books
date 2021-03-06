import 'package:flutter/material.dart';
import 'package:scan_books/components/search_bar.dart';
import 'package:scan_books/screens/bookmarks_screen.dart';
import 'package:scan_books/screens/overview_screen.dart';

class NavigationNavigator extends StatefulWidget {
  @override
  _NavigationNavigatorState createState() => _NavigationNavigatorState();
}

class _NavigationNavigatorState extends State<NavigationNavigator> {
  int _selectedIndex = 0;

  static List<Widget> _pageList = [
    OverviewScreen(),
    BookmarksScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: SearchBar(),
        ),
      ),
      body: Container(
        child: _pageList[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks),
            label: 'Bookmarks',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
