import 'package:flutter/material.dart';
import 'package:scanner/models/google_book_response.dart';

class DetailsScreen extends StatelessWidget {
  static const route = 'details_screen';

  const DetailsScreen({Key? key, required this.book}) : super(key: key);
  final GoogleBookResponse book;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(book.volumeInfo.title),
    );
  }
}
