// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:freeway_app/graphq_requests/user/user_requests.dart';
import '../../model/enums/enums.dart';
import '../../model/user/models.dart';

/// Controller for SignUp page
class SignUpViewModel {
  /// The user type selected for the user
  UserType? userType;
  CarrierData? _carrierData;
  ClientData? _clientData;
  UserData? _userData;
  final UserRequestsBuilder _requestsBuilder = Get.find();

  /// Set the data required for the login
  set userData(UserData userData) => _userData = userData;

  /// Set the data required for a user of type [UserType.carrier]
  ///
  /// Throws an error if this [userType] is different of [UserType.carrier]
  set carrierData(CarrierData carrierData) {
    if (userType != UserType.carrier) {
      throw Exception('UserType different from datatype');
    }
    _carrierData = carrierData;
  }

  /// Set the data required for a user of type [UserType.client]
  ///
  /// Throws an error if this [userType] is different of [UserType.client]
  set clientData(ClientData clientData) {
    if (userType != UserType.client) {
      throw Exception('UserType different from datatype');
    }
    _clientData = clientData;
  }

  /// Send data to the server and change page
  ///
  /// Throws an Exception if data are null
  Future<void> signup() async {
    if ((userType == null || _userData == null) || (_carrierData == null && _clientData == null)) {
      throw Exception('Faltan datos webon');
    }
    if (userType == UserType.carrier) {
      await _signUpCarrier();
    } else {
      await _signUpBuyer();
    }
  }

  Future<void> _signUpCarrier() async {}

  Future<void> _signUpBuyer() async {}
}
