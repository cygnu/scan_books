import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/navigation_navigator.dart';
import 'package:scanner/screens/bookmarks_screen.dart';
import 'package:scanner/screens/details_screen.dart';
import 'package:scanner/screens/overview_screen.dart';
import 'package:scanner/screens/web_view_screen.dart';
import 'package:scanner/views/main_view_model.dart';
import 'package:scanner/views/main_view_model_data.dart';

void main() => runApp(
      ProviderScope(
        child: ScanApp(),
      ),
    );

final viewModel = StateNotifierProvider<MainViewModel, MainViewModelData>(
    (refs) => MainViewModel());

final bookListProvider = StateProvider((refs) => <GoogleBookResponse>[]);
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
