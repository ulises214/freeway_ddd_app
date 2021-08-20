// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/custom_exception.dart';
import 'package:freeway_app/context/shared/domain/query.dart';

/// Exception when the query handler isnt registered
class QueryNotRegisteredException extends CustomException {
  /// Exception when the query handler isnt registered
  QueryNotRegisteredException(Query query)
      : super('The query <${query.runtimeType}> hasn\'t a query handler associated');
}
