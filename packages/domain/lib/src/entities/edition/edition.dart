import '../../../domain.dart';

class Edition {
  final int id;
  final String name;
  final String image;
  final DateTime releaseDate;
  final List<Article> articles;

  const Edition({
    required this.id,
    required this.name,
    required this.image,
    required this.releaseDate,
    required this.articles,
  });
}
