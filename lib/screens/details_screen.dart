import 'package:flutter/material.dart';
import 'package:scanner/models/google_book_response.dart';

class DetailsScreen extends StatelessWidget {
  static const route = 'details_screen';

  const DetailsScreen({Key? key, required this.book}) : super(key: key);
  final GoogleBookResponse book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.volumeInfo.title),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
            Flexible(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.volumeInfo.title,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'More at web',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
