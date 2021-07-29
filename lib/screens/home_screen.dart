import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/components/search_bar.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/views/main_view_model.dart';
import 'package:scanner/views/main_view_model_data.dart';

final viewModel = StateNotifierProvider<MainViewModel, MainViewModelData>(
    (refs) => MainViewModel());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: SearchBar(),
        ),
      ),
      body: Consumer(
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

            bookList.length > 0
                ? body = ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    itemCount: response!.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      var book = bookList[index];
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
                          book.volumeInfo.description != null
                              ? book.volumeInfo.description!
                              : '',
                          maxLines: 2,
                        ),
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(height: 0.5))
                : body = Center(
                    child: Text('検索結果は0件です'),
                  );
          }
          return body;
        },
      ),
    );
  }
}
