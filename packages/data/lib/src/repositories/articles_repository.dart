import 'package:data/src/datasource/articles.dart';
import 'package:domain/domain.dart';

class ArticlesRepository extends IArticlesRepository {
  @override
  Future<Article> getArticleDetails(int id) async =>
      ArticlesDataSource.articles.where((element) => element.id == id).first;

  @override
  Future<List<Article>> getArticles() async => ArticlesDataSource.articles;
}
