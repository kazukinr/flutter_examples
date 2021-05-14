import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_examples/api_call/data/dto/qiita_article.dart';

part 'qiita_api_client.g.dart';

@RestApi(baseUrl: "https://qiita.com/api/v2")
abstract class QiitaApiClient {
  factory QiitaApiClient(Dio dio, {String baseUrl}) = _QiitaApiClient;

  static QiitaApiClient create() {
    final dio = Dio();
    return QiitaApiClient(dio);
  }

  @GET("/tags/flutter/items?per_page=50")
  Future<List<QiitaArticle>> getFlutterArticles();
}
