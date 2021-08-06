import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/navigation_navigator.dart';
import 'package:scanner/screens/bookmarks_screen.dart';
import 'package:scanner/screens/details_screen.dart';
import 'package:scanner/screens/overview_screen.dart';

void main() => runApp(
      ProviderScope(
        child: ScanApp(),
      ),
    );

class ScanApp extends StatelessWidget {
  late final GoogleBookResponse book;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationNavigator(),
        OverviewScreen.route: (context) => OverviewScreen(),
        DetailsScreen.route: (context) => DetailsScreen(
              book: book,
            ),
        BookmarksScreen.route: (context) => BookmarksScreen(),
      },
    );
  }
}
