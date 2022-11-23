// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'editions_cubit.dart';

abstract class EditionsListState extends Equatable {
  const EditionsListState();
}

class EditionsListInitial extends EditionsListState {
  @override
  List<Object?> get props => [];
}

class EditionsListLoading extends EditionsListState {
  @override
  List<Object?> get props => [];
}

class EditionsListLoaded extends EditionsListState {
  const EditionsListLoaded({required this.editions});

  final List<Edition> editions;

  @override
  List<Object?> get props => [
        editions,
      ];

  EditionsListLoaded copyWith({
    List<Edition>? Editions,
  }) {
    return EditionsListLoaded(
      editions: Editions ?? this.editions,
    );
  }
}

class EditionsListFailure extends EditionsListState {
  @override
  List<Object?> get props => [];
}
