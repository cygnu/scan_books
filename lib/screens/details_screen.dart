import 'package:flutter/material.dart';
import 'package:scanner/models/google_book_response.dart';

class DetailsScreen extends StatelessWidget {
  static const route = 'details_screen';

  const DetailsScreen({Key? key, required this.book}) : super(key: key);
  final GoogleBookResponse book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 45.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(book.volumeInfo.imageLinks.thumbnail),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
