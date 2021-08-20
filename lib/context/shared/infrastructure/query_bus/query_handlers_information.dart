// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/query_not_registered_exception.dart';
import 'package:freeway_app/context/shared/domain/query.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';
import 'package:freeway_app/context/shared/domain/response.dart';

/// Store the [QueryHandler] injected and manage the searching
class QueryHandlersInformation {
  /// Store the [QueryHandler] injected and manage the searching
  QueryHandlersInformation(List<QueryHandler<Query, Response>> queryHandlers) {
    _queryHandlersMap = _formatHandlers(queryHandlers);
  }
  late final Map<Type, QueryHandler<Query, Response>> _queryHandlersMap;

  Map<Type, QueryHandler<Query, Response>> _formatHandlers(
    List<QueryHandler<Query, Response>> queryHandlers,
  ) {
    final handlersMap = <Type, QueryHandler<Query, Response>>{};
    void addHandler(QueryHandler<Query, Response> h) => handlersMap[h.suscribedTo()] = h;
    queryHandlers.forEach(addHandler);
    return handlersMap;
  }

  /// Add a handler after it's initialized
  void add(QueryHandler queryHandler) {
    _queryHandlersMap.addAll(_formatHandlers([queryHandler]));
  }

  /// Search the corresponding [QueryHandler]
  QueryHandler<Query, Response> search(Query query) {
    final queryHandler = _queryHandlersMap[query];
    if (queryHandler == null) throw QueryNotRegisteredException(query);
    return queryHandler;
  }
}
