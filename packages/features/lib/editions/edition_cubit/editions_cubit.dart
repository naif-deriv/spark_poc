import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'editions_state.dart';

class EditionsListCubit extends Cubit<EditionsListState> {
  EditionsListCubit() : super(EditionsListInitial());

  final EditionsListService service = EditionsListService(
    EditionsRepository(),
  );

  void getEditions() async {
    emit(EditionsListLoading());

    /// TODO this is bad find a solution
    final List<Edition> editions = await service.execute(null);

    emit(EditionsListLoaded(editions: editions));
  }
}
