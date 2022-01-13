import 'package:sample_project/data/models/article_model.dart';
import 'package:sample_project/data/services/articles.dart';

import 'article_service_interface.dart';

class ArticleService extends IArticleService {
  @override
  Future<bool> delete(Article article) {
    throw UnimplementedError();
  }

  @override
  Future<List<Article>> getAll() {
    return Future.delayed(const Duration(seconds: 1), () {
      return articles;
    });
  }

  @override
  Future<Article> getSingle(int id) {
    return Future.delayed(const Duration(seconds: 1), () {
      return articles.singleWhere((element) => element.id == id);
    });
  }

  @override
  Future<bool> save(Article article) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(Article article) {
    throw UnimplementedError();
  }
}
