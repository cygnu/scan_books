import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scan_books/models/google_book_volume_info_response.dart';

part 'google_book_response.freezed.dart';
part 'google_book_response.g.dart';

@freezed
class GoogleBookResponse with _$GoogleBookResponse {
  const GoogleBookResponse._();
  const factory GoogleBookResponse({
    String? kind,
    String? id,
    String? etag,
    required GoogleBookVolumeInfoResponse volumeInfo,
    int? totalItems,
  }) = _GoogleBookResponse;
  factory GoogleBookResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleBookResponseFromJson(json);
}
