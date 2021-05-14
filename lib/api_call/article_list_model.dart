

import 'package:flutter/material.dart';
import 'package:flutter_examples/api_call/data/api/qiita_api_client.dart';
import 'package:flutter_examples/api_call/data/dto/qiita_article.dart';

class ArticleListModel extends ChangeNotifier {
  final api = QiitaApiClient.create();
   List<QiitaArticle> _articles = [];

   List<QiitaArticle> get articles => _articles;

   Future<void> getFlutterArticle() async {
     _articles = await api.getFlutterArticles();
     notifyListeners();
   }
}
