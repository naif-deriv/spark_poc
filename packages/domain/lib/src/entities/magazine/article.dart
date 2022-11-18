import 'package:domain/src/entities/magazine/section.dart';

class Article {
  final int id;
  final String headerTitle;
  final List<String> headerImages;
  final List<Section> sections;
  final String category;

  Article({
    required this.id,
    required this.headerTitle,
    required this.headerImages,
    required this.sections,
    required this.category,
  });
}
