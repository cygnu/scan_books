import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/models/google_books_response.dart';

part 'main_view_model_data.freezed.dart';

enum MainViewModelState { loading, error, normal }

@freezed
class MainViewModelData with _$MainViewModelData {
  const MainViewModelData._();
  const factory MainViewModelData({
    GoogleBooksResponse? response,
    MainViewModelState? viewModelState,
  }) = _MainViewModelData;
}
