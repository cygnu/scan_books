import 'package:flutter/material.dart';
import 'package:scan_books/models/google_book_response.dart';
import 'package:scan_books/screens/details_screen.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key, required this.book}) : super(key: key);
  final GoogleBookResponse book;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        book.volumeInfo.imageLinks!.thumbnail!,
      ),
      title: Text(
        book.volumeInfo.title,
        maxLines: 2,
      ),
      subtitle: Text(
        book.volumeInfo.description != null ? book.volumeInfo.description! : '',
        maxLines: 2,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(book: book),
          ),
        );
      },
    );
  }
}
