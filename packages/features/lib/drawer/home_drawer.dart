import 'package:flutter/material.dart';

class HomeDrawer extends Drawer {
  HomeDrawer({super.key})
      : super(
            child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              children: const [
                Text('Tech Blog'),
                Text('Media Coverage'),
                Text('Q&A'),
                Text('Words of Wisddom'),
                Text('Travel'),
                Text('Deriv Feature')
              ],
            ),
          ),
        ));
}
