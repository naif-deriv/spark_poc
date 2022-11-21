import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String categoryName;
  final IconData icon;
  const DrawerItem({
    required this.categoryName,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
      ),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            Icon(
              icon,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              categoryName,
            ),
          ],
        ),
      ),
    );
  }
}
