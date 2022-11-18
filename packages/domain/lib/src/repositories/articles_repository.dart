import '../entities/magazine/article.dart';

abstract class IArticlesRepository {
  Future<List<Article>> getArticles();
  Future<Article> getArticleDetails(int id);
}
