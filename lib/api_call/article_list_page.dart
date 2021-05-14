import 'package:flutter/material.dart';
import 'package:flutter_examples/api_call/article_list_model.dart';
import 'package:provider/provider.dart';

class ArticleListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ArticleListModel()..getFlutterArticle(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch articles via retrofit'),
        ),
        body: _ArticleList(),
      ),
    );
  }
}

class _ArticleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<ArticleListModel>(
        builder: (context, model, child) {
          return ListView.builder(
            itemCount: model.articles.length,
            itemBuilder: (context, int position) {
              return ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                title: Text(model.articles[position].toString()),
              );
            },
          );
        },
      ),
    );
  }
}
