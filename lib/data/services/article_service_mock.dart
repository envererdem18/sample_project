import 'package:sample_project/data/models/article_model.dart';
import 'package:sample_project/data/services/article_service_interface.dart';
import 'package:sample_project/data/services/articles.dart';

class ArticleServiceMock implements IArticleService {
  @override
  Future<bool> delete(Article article) {
    throw UnimplementedError();
  }

  @override
  Future<List<Article>> getAll() {
    return Future.delayed(const Duration(seconds: 1), () {
      return mockArticles;
    });
  }

  @override
  Future<Article> getSingle(int id) {
    return Future.delayed(const Duration(seconds: 1), () {
      return mockArticles.singleWhere((element) => element.id == id);
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
