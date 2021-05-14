// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QiitaArticle _$_$_QiitaArticleFromJson(Map<String, dynamic> json) {
  return _$_QiitaArticle(
    title: json['title'] as String?,
    url: json['url'] as String?,
    qiitaUser: json['user'] == null
        ? null
        : QiitaUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_QiitaArticleToJson(_$_QiitaArticle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'user': instance.qiitaUser,
    };
