import '../../domain.dart';

abstract class IEditionsRepository {
  Future<List<Edition>> getEditions();
}
