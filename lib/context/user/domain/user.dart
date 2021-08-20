// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/agregate_root.dart';
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/user/domain/carrier_data.dart';
import 'package:freeway_app/context/user/domain/client_data.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';

/// The user information for the application
class User extends AggregateRoot {
  /// The user information for the application
  User({
    required this.userData,
    this.carrierData,
    this.clientData,
  }) {
    if (carrierData == null && clientData == null) {
      throw InvalidArgumentException(
        'CarrierData y ClientData no pueden ser nulos al mismso tiempo',
      );
    }
  }

  /// The infor for the carrier
  final CarrierData? carrierData;

  /// The info for the client
  final ClientData? clientData;

  /// The shared user info
  final UserData userData;

  @override
  Map<String, dynamic> toPrimitives() {
    throw UnimplementedError();
  }
}
