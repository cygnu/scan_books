import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/components/book_item.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/navigation_navigator.dart';

class BookmarksScreen extends ConsumerWidget {
  static const route = 'bookmarks_screen';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(viewModel);
    final List<GoogleBookResponse> bookList =
        state.response != null ? state.response!.items : [];

    return Scaffold(
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          itemCount: state.response!.items.length,
          itemBuilder: (BuildContext context, int index) {
            final book = bookList[index];

            return BookItem(book: book);
          },
          separatorBuilder: (BuildContext context, int index) =>
              Divider(height: 0.5),
        ),
      ),
    );
  }
}
