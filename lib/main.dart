import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scan_books/models/google_book_response.dart';
import 'package:scan_books/navigation_navigator.dart';
import 'package:scan_books/screens/bookmarks_screen.dart';
import 'package:scan_books/screens/details_screen.dart';
import 'package:scan_books/screens/overview_screen.dart';
import 'package:scan_books/screens/web_view_screen.dart';
import 'package:scan_books/views/main_view_model.dart';
import 'package:scan_books/views/main_view_model_data.dart';

void main() => runApp(
      ProviderScope(
        child: ScanApp(),
      ),
    );

final viewModel = StateNotifierProvider<MainViewModel, MainViewModelData>(
    (refs) => MainViewModel());

final savedProvider = StateProvider((refs) => Set<GoogleBookResponse>());

class ScanApp extends StatelessWidget {
  late final GoogleBookResponse book;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationNavigator(),
        OverviewScreen.route: (context) => OverviewScreen(),
        DetailsScreen.route: (context) => DetailsScreen(book: book),
        WebViewScreen.route: (context) => WebViewScreen(book: book),
        BookmarksScreen.route: (context) => BookmarksScreen(),
      },
    );
  }
}
