// 📦 Package imports:
import 'package:ferry/ferry.dart';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/access_token.dart';
import 'package:freeway_app/context/shared/domain/common_types/email.dart';
import 'package:freeway_app/context/shared/domain/exceptions/connection_exception.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_facotry.dart';
import 'package:freeway_app/context/user/domain/invalid_credentials_exception.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';
import 'package:freeway_app/context/user/infrastructure/graphql/requests_builder.dart';

/// Implements the [UserRepository] to use graphql
class GraphQLUserRepository implements UserRepository {
  /// Initialize the request builder and the client factory
  GraphQLUserRepository() {
    _requestsBuilder = UserRequestsBuilder();
  }
  late final UserRequestsBuilder _requestsBuilder;
  @override
  Future<AccessToken> login(UserData userData) async {
    final req = _requestsBuilder.buildLoginRequest(userData);
    final client = GraphQLClientFactory.getUnloggedClient();
    final result = await client.request(req).firstWhere(
          (r) => r.dataSource == DataSource.Optimistic,
        );
    if (result.data?.signIn?.token == null) throw InvalidCredentialsException('User not found');
    if (result.linkException != null) throw ConnectionException(result.linkException.toString());
    if (result.hasErrors) throw Exception(result.graphqlErrors!.first.message);
    return AccessToken(result.data!.signIn!.token);
  }

  @override
  Future<void> requestRestorePassword(EmailAddress email) async {}
}
