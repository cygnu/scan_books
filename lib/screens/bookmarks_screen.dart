import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/components/book_list_view.dart';
import 'package:scanner/main.dart';

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
