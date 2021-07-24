import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:scanner/models/google_books_response.dart';

Future<GoogleBooksResponse> getBooks(String keyword) async {
  Uri url = 'https://www.googleapis.com/books/v1/volumes?q=$keyword' as Uri;

  http.Response response = await http.get(url);
  if (response.statusCode == 200) {
    return GoogleBooksResponse.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to connect to webservice.');
  }
}
