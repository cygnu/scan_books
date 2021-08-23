import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/navigation_navigator.dart';

class BookmarksScreen extends ConsumerWidget {
  static const route = 'bookmarks_screen';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(viewModel);
    final List<GoogleBookResponse> bookList =
        state.response != null ? state.response!.items : [];

    return Container(
      child: Text('bookmarks'),
    );
  }
}
