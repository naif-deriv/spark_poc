import 'package:data/src/datasource/editions.dart';
import 'package:domain/domain.dart';

class EditionsRepository extends IEditionsRepository {
  @override
  Future<List<Edition>> getEditions() async => EditionDataSource.editions;
}
