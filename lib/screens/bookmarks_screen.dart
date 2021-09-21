import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/components/book_item.dart';
import 'package:scanner/main.dart';
import 'package:scanner/models/google_book_response.dart';

class BookmarksScreen extends ConsumerWidget {
  static const route = 'bookmarks_screen';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final List<GoogleBookResponse> savedList =
        watch(savedProvider) as List<GoogleBookResponse>;

    return Scaffold(
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          itemCount: savedList.length,
          itemBuilder: (BuildContext context, int index) {
            final book = savedList[index];

            return BookItem(book: book);
          },
          separatorBuilder: (BuildContext context, int index) =>
              Divider(height: 0.5),
        ),
      ),
    );
  }
}
