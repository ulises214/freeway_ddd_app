part of 'domain.dart';

/// Handle the execution of a query
abstract class QueryHandler<Q extends Query, R extends Response> {
  /// Get the query to manage
  Type suscribedTo();

  /// Run the query and return the result
  Future<R> handle(Q query);
}
