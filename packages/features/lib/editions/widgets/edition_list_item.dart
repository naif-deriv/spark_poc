import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../homepage/screens/homepage_screen.dart';
import '../../navigation/navigator.dart';
import '../../shared/insets.dart';

class EditionListItem extends StatelessWidget {
  final Edition edition;
  const EditionListItem({
    required this.edition,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 2.0,
      ),
      height: 140,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            edition.image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            color: Colors.white.withOpacity(0.4),
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(4.0),
                margin: Insets.all8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      edition.name,
                      style: GoogleFonts.comfortaa(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Published on: ${edition.releaseDate.day}/${edition.releaseDate.month}/${edition.releaseDate.year}',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const StadiumBorder(),
              ),
              onPressed: () => Navigation.push(const Homepage(), context),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
