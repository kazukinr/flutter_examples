// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'qiita_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QiitaArticle _$QiitaArticleFromJson(Map<String, dynamic> json) {
  return _QiitaArticle.fromJson(json);
}

/// @nodoc
class _$QiitaArticleTearOff {
  const _$QiitaArticleTearOff();

  _QiitaArticle call(
      {String? title,
      String? url,
      @JsonKey(name: 'user') QiitaUser? qiitaUser}) {
    return _QiitaArticle(
      title: title,
      url: url,
      qiitaUser: qiitaUser,
    );
  }

  QiitaArticle fromJson(Map<String, Object> json) {
    return QiitaArticle.fromJson(json);
  }
}

/// @nodoc
const $QiitaArticle = _$QiitaArticleTearOff();

/// @nodoc
mixin _$QiitaArticle {
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  QiitaUser? get qiitaUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QiitaArticleCopyWith<QiitaArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaArticleCopyWith<$Res> {
  factory $QiitaArticleCopyWith(
          QiitaArticle value, $Res Function(QiitaArticle) then) =
      _$QiitaArticleCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? url,
      @JsonKey(name: 'user') QiitaUser? qiitaUser});

  $QiitaUserCopyWith<$Res>? get qiitaUser;
}

/// @nodoc
class _$QiitaArticleCopyWithImpl<$Res> implements $QiitaArticleCopyWith<$Res> {
  _$QiitaArticleCopyWithImpl(this._value, this._then);

  final QiitaArticle _value;
  // ignore: unused_field
  final $Res Function(QiitaArticle) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? url = freezed,
    Object? qiitaUser = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      qiitaUser: qiitaUser == freezed
          ? _value.qiitaUser
          : qiitaUser // ignore: cast_nullable_to_non_nullable
              as QiitaUser?,
    ));
  }

  @override
  $QiitaUserCopyWith<$Res>? get qiitaUser {
    if (_value.qiitaUser == null) {
      return null;
    }

    return $QiitaUserCopyWith<$Res>(_value.qiitaUser!, (value) {
      return _then(_value.copyWith(qiitaUser: value));
    });
  }
}

/// @nodoc
abstract class _$QiitaArticleCopyWith<$Res>
    implements $QiitaArticleCopyWith<$Res> {
  factory _$QiitaArticleCopyWith(
          _QiitaArticle value, $Res Function(_QiitaArticle) then) =
      __$QiitaArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? url,
      @JsonKey(name: 'user') QiitaUser? qiitaUser});

  @override
  $QiitaUserCopyWith<$Res>? get qiitaUser;
}

/// @nodoc
class __$QiitaArticleCopyWithImpl<$Res> extends _$QiitaArticleCopyWithImpl<$Res>
    implements _$QiitaArticleCopyWith<$Res> {
  __$QiitaArticleCopyWithImpl(
      _QiitaArticle _value, $Res Function(_QiitaArticle) _then)
      : super(_value, (v) => _then(v as _QiitaArticle));

  @override
  _QiitaArticle get _value => super._value as _QiitaArticle;

  @override
  $Res call({
    Object? title = freezed,
    Object? url = freezed,
    Object? qiitaUser = freezed,
  }) {
    return _then(_QiitaArticle(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      qiitaUser: qiitaUser == freezed
          ? _value.qiitaUser
          : qiitaUser // ignore: cast_nullable_to_non_nullable
              as QiitaUser?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_QiitaArticle implements _QiitaArticle {
  _$_QiitaArticle(
      {this.title, this.url, @JsonKey(name: 'user') this.qiitaUser});

  factory _$_QiitaArticle.fromJson(Map<String, dynamic> json) =>
      _$_$_QiitaArticleFromJson(json);

  @override
  final String? title;
  @override
  final String? url;
  @override
  @JsonKey(name: 'user')
  final QiitaUser? qiitaUser;

  @override
  String toString() {
    return 'QiitaArticle(title: $title, url: $url, qiitaUser: $qiitaUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QiitaArticle &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.qiitaUser, qiitaUser) ||
                const DeepCollectionEquality()
                    .equals(other.qiitaUser, qiitaUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(qiitaUser);

  @JsonKey(ignore: true)
  @override
  _$QiitaArticleCopyWith<_QiitaArticle> get copyWith =>
      __$QiitaArticleCopyWithImpl<_QiitaArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QiitaArticleToJson(this);
  }
}

abstract class _QiitaArticle implements QiitaArticle {
  factory _QiitaArticle(
      {String? title,
      String? url,
      @JsonKey(name: 'user') QiitaUser? qiitaUser}) = _$_QiitaArticle;

  factory _QiitaArticle.fromJson(Map<String, dynamic> json) =
      _$_QiitaArticle.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user')
  QiitaUser? get qiitaUser => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QiitaArticleCopyWith<_QiitaArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
