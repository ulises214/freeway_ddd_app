// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/domain.dart';

part '_query_handlers_information.dart';

/// Creates a queaque in memory for the querys
class InMemoryQueryBus implements QueryBus {
  /// Creates a queaque in memory for the querys
  InMemoryQueryBus(this._handlersInformation);
  final QueryHandlersInformation _handlersInformation;
  @override
  Future<R> ask<R extends Response>(Query query) {
    final handler = _handlersInformation.search(query);
    return handler.handle(query) as Future<R>;
  }

  @override
  void add<Q extends QueryHandler<Query, Response>>(Q queryHandler) {
    _handlersInformation.add(queryHandler);
  }
}
