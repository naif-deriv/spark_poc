import 'package:domain/src/repositories/articles_repository.dart';

import '../entities/magazine/article.dart';
import 'service.dart';

class ArticleDetailsService extends Service<Article> {
  ArticleDetailsService(this.articlesRepo);

  final IArticlesRepository articlesRepo;

  @override
  Future<Article> execute(props) async =>
      await articlesRepo.getArticleDetails(props!.first as int);
}
