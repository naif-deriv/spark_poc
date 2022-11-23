import 'package:domain/domain.dart';
import 'package:domain/src/services/service.dart';

class EditionsListService extends Service {
  final IEditionsRepository repository;

  EditionsListService(this.repository);
  @override
  Future execute(List<Object>? props) => repository.getEditions();
}
