// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _QiitaApiClient implements QiitaApiClient {
  _QiitaApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://qiita.com/api/v2';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<QiitaArticle>> getFlutterArticles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>(
        '/tags/flutter/items?per_page=50',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => QiitaArticle.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
