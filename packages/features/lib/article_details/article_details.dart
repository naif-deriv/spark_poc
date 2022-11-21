import 'package:domain/domain.dart';
import 'package:features/article_details/widgets/back_to_articles_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleDetailsScreen extends StatefulWidget {
  final Article article;
  const ArticleDetailsScreen({
    required this.article,
    super.key,
  });

  @override
  State<ArticleDetailsScreen> createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  bool _isVisibleButton = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              setState(() {
                if (direction == ScrollDirection.reverse) {
                  _isVisibleButton = false;
                } else if (direction == ScrollDirection.forward) {
                  _isVisibleButton = true;
                }
              });
              return true;
            },
            child: ListView(
              children: [
                Hero(
                  tag: 'article_header_${widget.article.id}',
                  child: Image.asset(
                    widget.article.headerImages.first,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    widget.article.headerTitle,
                    style: GoogleFonts.comfortaa(
                      fontSize: 24.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                for (Section section in widget.article.sections)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          section.title,
                          style: GoogleFonts.comfortaa(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        if (section.images.isNotEmpty)
                          Image.asset(
                            section.images.first,
                          ),
                        if (section.images.isNotEmpty)
                          const SizedBox(
                            height: 12,
                          ),
                        Text(
                          section.content.replaceAll('\n', ' '),
                          style: GoogleFonts.comfortaa(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: AnimatedOpacity(
              opacity: _isVisibleButton ? 1 : 0,
              duration: const Duration(
                milliseconds: 200,
              ),
              child: const BackToArticlesButton(),
            ),
          ),
        ],
      ),
    );
  }
}
