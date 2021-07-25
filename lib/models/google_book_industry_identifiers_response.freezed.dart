// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'google_book_industry_identifiers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoogleBookIndustryIdentifiersResponse
    _$GoogleBookIndustryIdentifiersResponseFromJson(Map<String, dynamic> json) {
  return _GoogleBookIndustryIdentifiersResponse.fromJson(json);
}

/// @nodoc
class _$GoogleBookIndustryIdentifiersResponseTearOff {
  const _$GoogleBookIndustryIdentifiersResponseTearOff();

  _GoogleBookIndustryIdentifiersResponse call(
      {required String type, required String identifier}) {
    return _GoogleBookIndustryIdentifiersResponse(
      type: type,
      identifier: identifier,
    );
  }

  GoogleBookIndustryIdentifiersResponse fromJson(Map<String, Object> json) {
    return GoogleBookIndustryIdentifiersResponse.fromJson(json);
  }
}

/// @nodoc
const $GoogleBookIndustryIdentifiersResponse =
    _$GoogleBookIndustryIdentifiersResponseTearOff();

/// @nodoc
mixin _$GoogleBookIndustryIdentifiersResponse {
  String get type => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleBookIndustryIdentifiersResponseCopyWith<
          GoogleBookIndustryIdentifiersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleBookIndustryIdentifiersResponseCopyWith<$Res> {
  factory $GoogleBookIndustryIdentifiersResponseCopyWith(
          GoogleBookIndustryIdentifiersResponse value,
          $Res Function(GoogleBookIndustryIdentifiersResponse) then) =
      _$GoogleBookIndustryIdentifiersResponseCopyWithImpl<$Res>;
  $Res call({String type, String identifier});
}

/// @nodoc
class _$GoogleBookIndustryIdentifiersResponseCopyWithImpl<$Res>
    implements $GoogleBookIndustryIdentifiersResponseCopyWith<$Res> {
  _$GoogleBookIndustryIdentifiersResponseCopyWithImpl(this._value, this._then);

  final GoogleBookIndustryIdentifiersResponse _value;
  // ignore: unused_field
  final $Res Function(GoogleBookIndustryIdentifiersResponse) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GoogleBookIndustryIdentifiersResponseCopyWith<$Res>
    implements $GoogleBookIndustryIdentifiersResponseCopyWith<$Res> {
  factory _$GoogleBookIndustryIdentifiersResponseCopyWith(
          _GoogleBookIndustryIdentifiersResponse value,
          $Res Function(_GoogleBookIndustryIdentifiersResponse) then) =
      __$GoogleBookIndustryIdentifiersResponseCopyWithImpl<$Res>;
  @override
  $Res call({String type, String identifier});
}

/// @nodoc
class __$GoogleBookIndustryIdentifiersResponseCopyWithImpl<$Res>
    extends _$GoogleBookIndustryIdentifiersResponseCopyWithImpl<$Res>
    implements _$GoogleBookIndustryIdentifiersResponseCopyWith<$Res> {
  __$GoogleBookIndustryIdentifiersResponseCopyWithImpl(
      _GoogleBookIndustryIdentifiersResponse _value,
      $Res Function(_GoogleBookIndustryIdentifiersResponse) _then)
      : super(
            _value, (v) => _then(v as _GoogleBookIndustryIdentifiersResponse));

  @override
  _GoogleBookIndustryIdentifiersResponse get _value =>
      super._value as _GoogleBookIndustryIdentifiersResponse;

  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_GoogleBookIndustryIdentifiersResponse(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoogleBookIndustryIdentifiersResponse
    extends _GoogleBookIndustryIdentifiersResponse
    with DiagnosticableTreeMixin {
  const _$_GoogleBookIndustryIdentifiersResponse(
      {required this.type, required this.identifier})
      : super._();

  factory _$_GoogleBookIndustryIdentifiersResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GoogleBookIndustryIdentifiersResponseFromJson(json);

  @override
  final String type;
  @override
  final String identifier;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoogleBookIndustryIdentifiersResponse(type: $type, identifier: $identifier)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'GoogleBookIndustryIdentifiersResponse'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('identifier', identifier));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoogleBookIndustryIdentifiersResponse &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(identifier);

  @JsonKey(ignore: true)
  @override
  _$GoogleBookIndustryIdentifiersResponseCopyWith<
          _GoogleBookIndustryIdentifiersResponse>
      get copyWith => __$GoogleBookIndustryIdentifiersResponseCopyWithImpl<
          _GoogleBookIndustryIdentifiersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GoogleBookIndustryIdentifiersResponseToJson(this);
  }
}

abstract class _GoogleBookIndustryIdentifiersResponse
    extends GoogleBookIndustryIdentifiersResponse {
  const factory _GoogleBookIndustryIdentifiersResponse(
      {required String type,
      required String identifier}) = _$_GoogleBookIndustryIdentifiersResponse;
  const _GoogleBookIndustryIdentifiersResponse._() : super._();

  factory _GoogleBookIndustryIdentifiersResponse.fromJson(
          Map<String, dynamic> json) =
      _$_GoogleBookIndustryIdentifiersResponse.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GoogleBookIndustryIdentifiersResponseCopyWith<
          _GoogleBookIndustryIdentifiersResponse>
      get copyWith => throw _privateConstructorUsedError;
}
