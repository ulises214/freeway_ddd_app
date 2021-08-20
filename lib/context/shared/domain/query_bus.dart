// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/query.dart';
import 'package:freeway_app/context/shared/domain/response.dart';

/// Creates a queaque to manage the querys
// ignore: one_member_abstracts
abstract class QueryBus {
  /// Add a [Query] to the quaque and excecute it
  Future<R> ask<R extends Response>(Query query);
}
