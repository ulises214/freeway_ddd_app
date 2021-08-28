// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/domain.dart';

/// Store the [QueryHandler] injected and manage the searching
class QueryHandlersInformation {
  /// Store the [QueryHandler] injected and manage the searching
  QueryHandlersInformation(List<QueryHandler> queryHandlers) {
    _queryHandlersMap = _formatHandlers(queryHandlers);
  }
  late final Map<Type, QueryHandler> _queryHandlersMap;

  Map<Type, QueryHandler> _formatHandlers(
    List<QueryHandler> queryHandlers,
  ) {
    final handlersMap = <Type, QueryHandler>{};
    void addHandler(QueryHandler h) => handlersMap[h.suscribedTo()] = h;
    queryHandlers.forEach(addHandler);
    return handlersMap;
  }

  /// Add a handler after it's initialized
  void add(QueryHandler queryHandler) {
    _queryHandlersMap.addAll(_formatHandlers([queryHandler]));
  }

  /// Search the corresponding [QueryHandler]
  QueryHandler search(Query query) {
    final queryHandler = _queryHandlersMap[query.runtimeType];
    if (queryHandler == null) throw QueryNotRegisteredException(query);
    return queryHandler;
  }
}
