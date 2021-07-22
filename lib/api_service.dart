import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

const baseURL = 'https://www.googleapis.com/books/v1';

Future<Book> getBooks(String keyword) async {
  var url = 'https://www.googleapis.com/books/v1/volumes?q=$keyword';

  final response = await http.get(url);
  if (response.statusCode == 200) {
    return Book.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to connect to webservice.');
  }
}
