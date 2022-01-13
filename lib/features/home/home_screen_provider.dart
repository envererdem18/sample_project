import 'package:flutter/material.dart';
import 'package:sample_project/data/models/article_model.dart';
import 'package:sample_project/data/services/article_service.dart';
import 'package:sample_project/data/services/article_service_interface.dart';
import 'package:sample_project/features/settings/settings_screen.dart';

class HomeScreenViewModel extends ChangeNotifier {
  int _count = 2;
  List<Article> _articles = [];
  List<Article> _filteredArticles = [];
  late IArticleService _articleService;
  bool _isLoading = true;

  HomeScreenViewModel() {
    _articleService = ArticleService();
    loadArticles();
  }

  goToSettings(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SettingsScreen(),
      ),
    );
  }

  // Getters
  int get count => _count;
  List<Article> get articles => _filteredArticles;
  bool get isLoading => _isLoading;

  // Setters
  setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  incrementCount({int value = 1}) {
    if (_count == _articles.length) {
      return;
    }
    _count += value;
    filter();
    notifyListeners();
  }

  decrementCount({int value = 1}) {
    if (_count == 0) {
      return;
    }
    _count -= value;
    filter();
    notifyListeners();
  }

  loadArticles() async {
    setLoading(true);
    _articles = await _articleService.getAll();
    _filteredArticles = _articles.take(_count).toList();
    setLoading(false);
  }

  filter() {
    _filteredArticles = _articles.take(_count).toList();
  }
}
