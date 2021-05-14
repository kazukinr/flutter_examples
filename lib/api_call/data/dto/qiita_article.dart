import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_examples/api_call/data/dto/qiita_user.dart';

part 'qiita_article.freezed.dart';

part 'qiita_article.g.dart';

@freezed
abstract class QiitaArticle with _$QiitaArticle {
  factory QiitaArticle({
    String? title,
    String? url,
    @JsonKey(name: 'user') QiitaUser? qiitaUser,
  }) = _QiitaArticle;

  factory QiitaArticle.fromJson(Map<String, dynamic> json) =>
      _$QiitaArticleFromJson(json);
}