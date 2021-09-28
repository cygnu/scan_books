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
    var savedSet = watch(savedProvider).state;

    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      itemCount: bookList.length,
      itemBuilder: (BuildContext context, int index) {
        final book = bookList[index];
        final alreadySaved = savedSet.contains(index);

        return Dismissible(
          key: Key(book.id!),
          onDismissed: (direction) {
            alreadySaved ? savedSet.remove(book) : savedSet.add(book);
          },
          background: Container(
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
