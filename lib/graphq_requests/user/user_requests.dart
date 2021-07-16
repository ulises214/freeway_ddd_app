import '../../model/user/models.dart';
import 'graphql/login.req.gql.dart';
import 'graphql/sign_up_buyer.req.gql.dart';
import 'graphql/sign_up_carrier.req.gql.dart';

export 'graphql/login.data.gql.dart';
export 'graphql/login.req.gql.dart';
export 'graphql/login.var.gql.dart';

export 'graphql/sign_up_buyer.data.gql.dart';
export 'graphql/sign_up_buyer.req.gql.dart';
export 'graphql/sign_up_buyer.var.gql.dart';

export 'graphql/sign_up_carrier.data.gql.dart';
export 'graphql/sign_up_carrier.req.gql.dart';
export 'graphql/sign_up_carrier.var.gql.dart';

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

  /// Return the mutation to create a user of type `Buyer`
  GSignUpBuyerReq buildSignUpBuyerRequest(
    UserData userData,
    ClientData buyerData,
  ) {
    return GSignUpBuyerReq(
      (b) => b
        // ? Phone number
        ..vars.cellPhone.lada = userData.lada
        ..vars.cellPhone.number = userData.phoneNumber
        // ? Passowrd
        ..vars.password = userData.password
        // ? Buyer data
        ..vars.buyerData.businessName = buyerData.businessName
        ..vars.buyerData.email = buyerData.email
        ..vars.buyerData.fullName = buyerData.name
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
        ..vars.cellPhone.lada = userData.lada
        ..vars.cellPhone.number = userData.phoneNumber
        // ? Passowrd
        ..vars.password = userData.password
        ..vars.carrierData.address = carrierData.address
        ..vars.carrierData.companyName = carrierData.businessName
        ..vars.carrierData.email = carrierData.email
        ..vars.carrierData.fullName = carrierData.name
        // TODO define legal card
        ..vars.carrierData.legalCard = 'Legal card'
        ..vars.carrierData.moralPerson = carrierData.personType.toString()
        ..vars.carrierData.physicalPerson = carrierData.personType.toString(),
    );
  }
}
