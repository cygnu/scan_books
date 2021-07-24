import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/models/google_book_image_links_response.dart';
import 'package:scanner/models/google_book_industry_identifiers_response.dart';

part 'google_book_volume_info_response.freezed.dart';
part 'google_book_volume_info_response.g.dart';

@freezed
class GoogleBookVolumeInfoResponse with _$GoogleBookVolumeInfoResponse {
  const GoogleBookVolumeInfoResponse._();
  const factory GoogleBookVolumeInfoResponse({
    required String title,
    required String publisher,
    required String publishedDate,
    required String description,
    List<GoogleBookIndustryIdentifiersResponse> industryIdentifiers,
    required int pageCount,
    GoogleBookImageLinksResponse imageLinks,
    required String infoLink,
  }) = _GoogleBookVolumeInfoResponse;
  factory GoogleBookVolumeInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleBookVolumeInfoResponseFromJson(json);
}
