import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scan_books/components/book_list_view.dart';
import 'package:scan_books/main.dart';
import 'package:scan_books/models/google_book_response.dart';
import 'package:scan_books/views/main_view_model_data.dart';

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
          final List<GoogleBookResponse> searchResultList =
              state.response != null ? state.response!.items : [];

          searchResultList.isNotEmpty
              ? body = BookListView(bookList: searchResultList)
              : body = Center(
                  child: Text('検索結果は0件です'),
                );
        }
        return body;
      },
    );
  }
}
