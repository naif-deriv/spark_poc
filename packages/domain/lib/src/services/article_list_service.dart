import 'package:domain/src/entities/magazine/article.dart';
import 'package:domain/src/repositories/articles_repository.dart';

import 'service.dart';

class ArticleListService extends Service<List<Article>> {
  ArticleListService(this.articlesRepo);

  final IArticlesRepository articlesRepo;

  @override
  Future<List<Article>> execute(props) async =>
      await articlesRepo.getArticles();
}
