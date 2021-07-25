import 'package:scanner/models/google_books_api_service.dart';
import 'package:scanner/view/main_view_model_data.dart';
import 'package:state_notifier/state_notifier.dart';

class MainViewModel extends StateNotifier<MainViewModelData> {
  MainViewModel() : super(MainViewModelData);

  void fetch(String keyword) {
    state = state.copyWith(viewModelState: MainViewModelState.loading);

    getBooks(keyword).then((res) {
      state = state.copyWith(
          response: res, mainModelState: MainViewModelState.normal);
    }).catchError((_) {
      state = state.copyWith(
          response: null, mainModelState: MainViewModelState.error);
    });
  }
}
