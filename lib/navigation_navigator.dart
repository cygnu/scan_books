import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/components/search_bar.dart';
import 'package:scanner/screens/bookmarks_screen.dart';
import 'package:scanner/screens/overview_screen.dart';
import 'package:scanner/views/main_view_model.dart';
import 'package:scanner/views/main_view_model_data.dart';

final viewModel = StateNotifierProvider<MainViewModel, MainViewModelData>(
    (refs) => MainViewModel());

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
