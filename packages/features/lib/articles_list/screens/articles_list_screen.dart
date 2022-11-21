import 'package:features/articles_list/widgets/article_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../article_details/article_details.dart';
import '../../navigation/navigator.dart';
import '../cubit/articles_list_cubit.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArticlesListCubit()..getArticles(),
      child: BlocBuilder<ArticlesListCubit, ArticlesListState>(
        builder: (context, state) {
          if (state is ArticlesListInitial ||
              state is ArticlesListLoading ||
              state is ArticlesListFailure) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          } else if (state is ArticlesListLoaded) {
            return Column(
              children: List.generate(
                state.articles.length,
                (index) => GestureDetector(
                  onTap: () => Navigation.push(
                    ArticleDetailsScreen(
                      article: state.articles[index],
                    ),
                    context,
                  ),
                  child: ArticleItem(
                    state.articles[index],
                  ),
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
