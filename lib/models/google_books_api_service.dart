import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:scan_books/models/google_books_response.dart';

const baseURL = 'https://www.googleapis.com/books/v1/volumes';

Future<GoogleBooksResponse> booksSearch(String keyword) async {
  var url = Uri.parse('$baseURL?q=$keyword');
  print(url);

  http.Response response = await http.get(url);
  if (response.statusCode == 200) {
    return GoogleBooksResponse.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to connect to webservice.');
  }
}

Future<GoogleBooksResponse> getBooksByISBN(String isbn) async {
  var url = Uri.parse('$baseURL?q=isbn:$isbn');
  print(url);

  http.Response response = await http.get(url);
  if (response.statusCode == 200) {
    return GoogleBooksResponse.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to connect to webservice.');
  }
}
