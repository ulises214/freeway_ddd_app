// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/custom_exception.dart';

/// When a grapqhql client is not registered on GrapqhQLclientFacotry
class GraphQLClientNotRegisteredException extends CustomException {
  /// When a grapqhql client is not registered on GrapqhQLclientFacotry
  GraphQLClientNotRegisteredException([String? cause]) : super(cause);
}
