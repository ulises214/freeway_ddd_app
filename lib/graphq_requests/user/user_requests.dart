import '../../model/user/models.dart';
import 'graphql/login.req.gql.dart';

export 'graphql/login.data.gql.dart';
export 'graphql/login.req.gql.dart';
export 'graphql/login.var.gql.dart';

/// Create the request to user actions
class UserRequestsBuilder {
  /// Return the mutation that login a existent user
  GLoginReq loginRequest(UserData userData) {
    return GLoginReq(
      (b) => b
        ..vars.input.cellphone.lada = userData.lada
        ..vars.input.cellphone.number = userData.phoneNumber
        ..vars.input.password = userData.password,
    );
  }
}
