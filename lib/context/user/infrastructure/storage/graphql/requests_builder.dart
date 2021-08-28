// 🌎 Project imports:
import 'package:freeway_app/context/user/domain/domain.dart';

import 'requests/login.req.gql.dart';
import 'requests/sign_up_buyer.req.gql.dart';
import 'requests/sign_up_carrier.req.gql.dart';

/// Create the request to user actions
class UserRequestsBuilder {
  /// Return the mutation that login a existent user
  GLoginReq buildLoginRequest(UserData userData) {
    return GLoginReq(
      (b) => b
        ..vars.input.cellphone.lada = userData.lada.value
        ..vars.input.cellphone.number = userData.phoneNumber.value
        ..vars.input.password = userData.password.value,
    );
  }

  /// Return the mutation to create a user of type `Buyer`
  GSignUpBuyerReq buildSignUpBuyerRequest(
    UserData userData,
    ClientData buyerData,
  ) {
    return GSignUpBuyerReq(
      (b) => b
        // ? Phone number
        ..vars.cellPhone.lada = userData.lada.value
        ..vars.cellPhone.number = userData.phoneNumber.value
        // ? Passowrd
        ..vars.password = userData.password.value
        // ? Buyer data
        ..vars.buyerData.businessName = buyerData.businessName.value
        ..vars.buyerData.email = buyerData.email.value
        ..vars.buyerData.fullName = buyerData.name.value
        ..vars.buyerData.moralPerson = buyerData.personType.toString()
        ..vars.buyerData.physicalPerson = buyerData.personType.toString(),
    );
  }

  /// Return the mutation to create a user of type `Carrier`
  GSignUpCarrierReq buildSignUpCarrierRequest(
    UserData userData,
    CarrierData carrierData,
  ) {
    return GSignUpCarrierReq(
      (b) => b
        // ? Phone number
        ..vars.cellPhone.lada = userData.lada.value
        ..vars.cellPhone.number = userData.phoneNumber.value
        // ? Passowrd
        ..vars.password = userData.password.value
        ..vars.carrierData.address = carrierData.address.value
        ..vars.carrierData.companyName = carrierData.businessName.value
        ..vars.carrierData.email = carrierData.email.value
        ..vars.carrierData.fullName = carrierData.name.value
        // TODO define legal card
        ..vars.carrierData.legalCard = 'Legal card'
        ..vars.carrierData.moralPerson = carrierData.personType.toString()
        ..vars.carrierData.physicalPerson = carrierData.personType.toString(),
    );
  }
}
