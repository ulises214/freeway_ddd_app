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
  GSignInInput,
  GSignUpInput,
  GUserAdminAttributes,
  GUserBuyerAttributes,
  GUserCarrierAttributes
])
final Serializers serializers = _serializersBuilder.build();
