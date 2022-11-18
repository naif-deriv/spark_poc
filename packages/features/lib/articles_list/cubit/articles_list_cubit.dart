import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'articles_list_state.dart';

class ArticlesListCubit extends Cubit<ArticlesListState> {
  ArticlesListCubit() : super(ArticlesListInitial());

  final ArticleListService service = ArticleListService(
    ArticlesRepository(),
  );

  void getArticles() async {
    emit(ArticlesListLoading());

    /// TODO this is bad find a solution
    final List<Article> articles = await service.execute(null);

    emit(ArticlesListLoaded(articles: articles));
  }
}
