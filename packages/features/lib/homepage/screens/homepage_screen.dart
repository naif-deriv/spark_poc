import 'package:features/drawer/home_drawer.dart';
import 'package:flutter/material.dart';

import '../../articles_list/screens/articles_list_screen.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Transform.scale(
              scale: 1.5,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                ),
                child: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.sort,
                    ),
                  );
                }),
              ),
            ),
          ),
          const ArticlesList(),
        ],
      ),
    );
  }
}
