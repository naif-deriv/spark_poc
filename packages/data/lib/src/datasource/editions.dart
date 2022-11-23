import 'package:data/src/datasource/articles.dart';
import 'package:domain/domain.dart';

class EditionDataSource {
  static final List<Edition> editions = [
    Edition(
      id: 1,
      name: 'Squad Game',
      image: 'assets/article-2-header.png',
      releaseDate: DateTime(2022, 8, 6),
      articles: ArticlesDataSource.articles,
    ),
    Edition(
      id: 2,
      name: 'Agents of Change',
      image: 'assets/article-3-header.png',
      releaseDate: DateTime(2022, 9, 3),
      articles: ArticlesDataSource.articles,
    ),
    Edition(
      id: 3,
      name: 'OKRs... from mission to metrics.',
      image: 'assets/article-1-header.png',
      releaseDate: DateTime(2022, 10, 2),
      articles: ArticlesDataSource.articles,
    ),
  ];
}
