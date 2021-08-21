// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/query.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';
import 'package:freeway_app/context/shared/domain/response.dart';

/// Creates a queaque to manage the querys
abstract class QueryBus {
  /// Add a [Query] to the quaque and excecute it
  Future<R> ask<R extends Response>(Query query);

  /// Add a new [QueryHandler] to the registered handlers
  void add<Q extends QueryHandler>(Q queryHandler);
}
