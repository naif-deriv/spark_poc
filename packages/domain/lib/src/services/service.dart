abstract class Service<T> {
  Future<T> execute(List<Object>? props);
}
