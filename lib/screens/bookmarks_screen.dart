import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scan_books/components/book_list_view.dart';
import 'package:scan_books/main.dart';

class BookmarksScreen extends ConsumerWidget {
  static const route = 'bookmarks_screen';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var savedList = watch(savedProvider).state.toList();

    return Scaffold(
      body: Container(
        child: savedList.isNotEmpty
            ? BookListView(bookList: savedList)
            : Center(
                child: Text('リストへの登録がまだありません'),
              ),
      ),
    );
  }
}
