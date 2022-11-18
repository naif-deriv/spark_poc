// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'articles_list_cubit.dart';

abstract class ArticlesListState extends Equatable {
  const ArticlesListState();
}

class ArticlesListInitial extends ArticlesListState {
  @override
  List<Object?> get props => [];
}

class ArticlesListLoading extends ArticlesListState {
  @override
  List<Object?> get props => [];
}

class ArticlesListLoaded extends ArticlesListState {
  const ArticlesListLoaded({required this.articles});

  final List<Article> articles;

  @override
  List<Object?> get props => [
        articles,
      ];

  ArticlesListLoaded copyWith({
    List<Article>? articles,
  }) {
    return ArticlesListLoaded(
      articles: articles ?? this.articles,
    );
  }
}

class ArticlesListFailure extends ArticlesListState {
  @override
  List<Object?> get props => [];
}
