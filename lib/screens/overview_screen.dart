import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/models/google_books_response.dart';
import 'package:scanner/navigation_navigator.dart';
import 'package:scanner/screens/details_screen.dart';
import 'package:scanner/views/main_view_model_data.dart';

class OverviewScreen extends StatefulWidget {
  static const route = 'overview_screen';

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final state = watch(viewModel);

        Widget body = Container();
        if (state.viewModelState == MainViewModelState.loading) {
          body = Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.viewModelState == MainViewModelState.error) {
          body = Center(
            child: Text('エラーが発生しました。検索ワードを変えてお試しください'),
          );
        } else {
          final response = state.response;
          final List<GoogleBookResponse> bookList =
              response != null ? response.items : [];
          final _saved = Set<GoogleBookResponse>();

          bookList.length > 0
              ? body = _buildSuggestions(response, bookList, _saved)
              : body = Center(
                  child: Text('検索結果は0件です'),
                );
        }
        return body;
      },
    );
  }
}

Widget _buildSuggestions(
  GoogleBooksResponse? response,
  List<GoogleBookResponse> bookList,
  Set<GoogleBookResponse> _saved,
) {
  return ListView.separated(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    itemCount: response!.items.length,
    itemBuilder: (BuildContext context, int index) {
      final book = bookList[index];
      final alreadySaved = _saved.contains(index);

      return Dismissible(
        key: Key(book.id!),
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            bookList.removeAt(index);
          } else {
            alreadySaved ? bookList.removeAt(index) : _saved.add(book);
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
        child: _buildRow(book, context),
      );
    },
    separatorBuilder: (BuildContext context, int index) => Divider(height: 0.5),
  );
}

Widget _buildRow(GoogleBookResponse book, BuildContext context) {
  return ListTile(
    leading: book.volumeInfo.imageLinks != null
        ? Image.network(
            book.volumeInfo.imageLinks.thumbnail,
          )
        : Container(),
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
