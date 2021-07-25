// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_view_model_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainViewModelDataTearOff {
  const _$MainViewModelDataTearOff();

  _MainViewModelData call(
      {GoogleBooksResponse? response, MainViewModelState? viewModelState}) {
    return _MainViewModelData(
      response: response,
      viewModelState: viewModelState,
    );
  }
}

/// @nodoc
const $MainViewModelData = _$MainViewModelDataTearOff();

/// @nodoc
mixin _$MainViewModelData {
  GoogleBooksResponse? get response => throw _privateConstructorUsedError;
  MainViewModelState? get viewModelState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainViewModelDataCopyWith<MainViewModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainViewModelDataCopyWith<$Res> {
  factory $MainViewModelDataCopyWith(
          MainViewModelData value, $Res Function(MainViewModelData) then) =
      _$MainViewModelDataCopyWithImpl<$Res>;
  $Res call(
      {GoogleBooksResponse? response, MainViewModelState? viewModelState});

  $GoogleBooksResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$MainViewModelDataCopyWithImpl<$Res>
    implements $MainViewModelDataCopyWith<$Res> {
  _$MainViewModelDataCopyWithImpl(this._value, this._then);

  final MainViewModelData _value;
  // ignore: unused_field
  final $Res Function(MainViewModelData) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? viewModelState = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as GoogleBooksResponse?,
      viewModelState: viewModelState == freezed
          ? _value.viewModelState
          : viewModelState // ignore: cast_nullable_to_non_nullable
              as MainViewModelState?,
    ));
  }

  @override
  $GoogleBooksResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $GoogleBooksResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$MainViewModelDataCopyWith<$Res>
    implements $MainViewModelDataCopyWith<$Res> {
  factory _$MainViewModelDataCopyWith(
          _MainViewModelData value, $Res Function(_MainViewModelData) then) =
      __$MainViewModelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {GoogleBooksResponse? response, MainViewModelState? viewModelState});

  @override
  $GoogleBooksResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$MainViewModelDataCopyWithImpl<$Res>
    extends _$MainViewModelDataCopyWithImpl<$Res>
    implements _$MainViewModelDataCopyWith<$Res> {
  __$MainViewModelDataCopyWithImpl(
      _MainViewModelData _value, $Res Function(_MainViewModelData) _then)
      : super(_value, (v) => _then(v as _MainViewModelData));

  @override
  _MainViewModelData get _value => super._value as _MainViewModelData;

  @override
  $Res call({
    Object? response = freezed,
    Object? viewModelState = freezed,
  }) {
    return _then(_MainViewModelData(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as GoogleBooksResponse?,
      viewModelState: viewModelState == freezed
          ? _value.viewModelState
          : viewModelState // ignore: cast_nullable_to_non_nullable
              as MainViewModelState?,
    ));
  }
}

/// @nodoc

class _$_MainViewModelData extends _MainViewModelData
    with DiagnosticableTreeMixin {
  const _$_MainViewModelData({this.response, this.viewModelState}) : super._();

  @override
  final GoogleBooksResponse? response;
  @override
  final MainViewModelState? viewModelState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainViewModelData(response: $response, viewModelState: $viewModelState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainViewModelData'))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('viewModelState', viewModelState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainViewModelData &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.viewModelState, viewModelState) ||
                const DeepCollectionEquality()
                    .equals(other.viewModelState, viewModelState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(viewModelState);

  @JsonKey(ignore: true)
  @override
  _$MainViewModelDataCopyWith<_MainViewModelData> get copyWith =>
      __$MainViewModelDataCopyWithImpl<_MainViewModelData>(this, _$identity);
}

abstract class _MainViewModelData extends MainViewModelData {
  const factory _MainViewModelData(
      {GoogleBooksResponse? response,
      MainViewModelState? viewModelState}) = _$_MainViewModelData;
  const _MainViewModelData._() : super._();

  @override
  GoogleBooksResponse? get response => throw _privateConstructorUsedError;
  @override
  MainViewModelState? get viewModelState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainViewModelDataCopyWith<_MainViewModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
