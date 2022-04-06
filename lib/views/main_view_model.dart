import 'package:scan_books/models/google_books_api_service.dart';
import 'package:scan_books/views/main_view_model_data.dart';
import 'package:state_notifier/state_notifier.dart';

class MainViewModel extends StateNotifier<MainViewModelData> {
  MainViewModel() : super(MainViewModelData());

  void fetch(String keyword) {
    state = state.copyWith(viewModelState: MainViewModelState.loading);

    booksSearch(keyword).then((res) {
      state = state.copyWith(
          response: res, viewModelState: MainViewModelState.normal);
    }).catchError((_) {
      state = state.copyWith(
          response: null, viewModelState: MainViewModelState.error);
    });
  }

  void fetche(String isbn) {
    state = state.copyWith(viewModelState: MainViewModelState.loading);

    getBooksByISBN(isbn).then((res) {
      state = state.copyWith(
          response: res, viewModelState: MainViewModelState.normal);
    }).catchError((_) {
      state = state.copyWith(
          response: null, viewModelState: MainViewModelState.error);
    });
  }
}
