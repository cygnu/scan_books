import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_book_industry_identifiers_response.freezed.dart';
part 'google_book_industry_identifiers_response.g.dart';

@freezed
class GoogleBookIndustryIdentifiersResponse
    with _$GoogleBookIndustryIdentifiersResponse {
  const GoogleBookIndustryIdentifiersResponse._();
  const factory GoogleBookIndustryIdentifiersResponse({
    required String type,
    required String identifier,
  }) = _GoogleBookIndustryIdentifiersResponse;
  factory GoogleBookIndustryIdentifiersResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GoogleBookIndustryIdentifiersResponseFromJson(json);
}
