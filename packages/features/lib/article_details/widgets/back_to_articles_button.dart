import 'package:flutter/material.dart';

import '../../navigation/navigator.dart';

class BackToArticlesButton extends StatelessWidget {
  const BackToArticlesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.9),
        foregroundColor: Colors.black,
      ),
      onPressed: () => Navigation.pop(context),
      child: Row(
        children: const [
          Icon(
            Icons.arrow_back,
            size: 16,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Back to articles',
          ),
        ],
      ),
    );
  }
}
