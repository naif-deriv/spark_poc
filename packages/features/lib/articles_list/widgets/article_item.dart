import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleItem extends StatelessWidget {
  final Article article;
  const ArticleItem(this.article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 40.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: 'article_header_${article.id}',
            child: Image.asset(
              article.headerImages.first,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            article.headerTitle,
            style: GoogleFonts.comfortaa(
              fontSize: 24.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
