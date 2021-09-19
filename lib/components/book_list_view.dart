import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/components/book_item.dart';
import 'package:scanner/main.dart';
import 'package:scanner/models/google_book_response.dart';

class BookListView extends ConsumerWidget {
  BookListView({
    Key? key,
    required this.bookList,
  }) : super(key: key);

  final List<GoogleBookResponse> bookList;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final saved = watch(savedProvider).state;

    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      itemCount: bookList.length,
      itemBuilder: (BuildContext context, int index) {
        final book = bookList[index];
        final alreadySaved = saved.contains(index);

        return Dismissible(
          key: Key(book.id!),
          onDismissed: (direction) {
            if (direction == DismissDirection.startToEnd) {
              bookList.removeAt(index);
            } else {
              alreadySaved ? bookList.removeAt(index) : saved.add(book);
            }
          },
          background: Container(
            alignment: Alignment.centerLeft,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'アーカイブ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          secondaryBackground: Container(
            alignment: Alignment.centerRight,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '登録',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          child: BookItem(book: book),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(height: 0.5),
    );
  }
}
