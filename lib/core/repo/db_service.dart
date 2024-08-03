abstract class InterfaceRepository<T> {
  /// for get data from DB
  Future<T?> getAll();

  /// for insert and update DB
  Future<void> insertItem({required T object});

  Future<bool> isDataAvailable();
}
