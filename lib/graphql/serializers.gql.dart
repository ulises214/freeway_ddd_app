import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:freeway_app/graphql/schema.schema.gql.dart'
    show
        GCargoServiceStateUpdateInput,
        GCellphoneAttributes,
        GCreateCargoServiceInput,
        GSignInInput,
        GSignUpInput,
        GUserAdminAttributes,
        GUserBuyerAttributes,
        GUserCarrierAttributes;
import 'package:freeway_app/models_view/login/graphql/login.data.gql.dart'
    show
        GLoginData,
        GLoginData_signIn,
        GLoginData_signIn_user,
        GLoginData_signIn_user_cellphone;
import 'package:freeway_app/models_view/login/graphql/login.req.gql.dart'
    show GLoginReq;
import 'package:freeway_app/models_view/login/graphql/login.var.gql.dart'
    show GLoginVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCargoServiceStateUpdateInput,
  GCellphoneAttributes,
  GCreateCargoServiceInput,
  GLoginData,
  GLoginData_signIn,
  GLoginData_signIn_user,
  GLoginData_signIn_user_cellphone,
  GLoginReq,
  GLoginVars,
  GSignInInput,
  GSignUpInput,
  GUserAdminAttributes,
  GUserBuyerAttributes,
  GUserCarrierAttributes
])
final Serializers serializers = _serializersBuilder.build();
