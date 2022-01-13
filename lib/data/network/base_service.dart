abstract class BaseService<T> {
  Future<T> getSingle(int id);
  Future<List<T>> getAll();
  Future<bool> save(T model);
  Future<bool> delete(T model);
  Future<bool> update(T model);
}
