// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:freeway_app/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCargoServiceStateUpdateInput
    implements
        Built<GCargoServiceStateUpdateInput,
            GCargoServiceStateUpdateInputBuilder> {
  GCargoServiceStateUpdateInput._();

  factory GCargoServiceStateUpdateInput(
          [Function(GCargoServiceStateUpdateInputBuilder b) updates]) =
      _$GCargoServiceStateUpdateInput;

  @BuiltValueField(wireName: '__typename')
  String? get G__typename;
  String get cargoServiceId;
  String get state;
  String? get clientMutationId;
  static Serializer<GCargoServiceStateUpdateInput> get serializer =>
      _$gCargoServiceStateUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCargoServiceStateUpdateInput.serializer, this) as Map<String, dynamic>);
  static GCargoServiceStateUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCargoServiceStateUpdateInput.serializer, json);
}

abstract class GCellphoneAttributes
    implements Built<GCellphoneAttributes, GCellphoneAttributesBuilder> {
  GCellphoneAttributes._();

  factory GCellphoneAttributes(
          [Function(GCellphoneAttributesBuilder b) updates]) =
      _$GCellphoneAttributes;

  String get lada;
  String get number;
  static Serializer<GCellphoneAttributes> get serializer =>
      _$gCellphoneAttributesSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCellphoneAttributes.serializer, this)
          as Map<String, dynamic>);
  static GCellphoneAttributes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCellphoneAttributes.serializer, json);
}

abstract class GCreateCargoServiceInput
    implements
        Built<GCreateCargoServiceInput, GCreateCargoServiceInputBuilder> {
  GCreateCargoServiceInput._();

  factory GCreateCargoServiceInput(
          [Function(GCreateCargoServiceInputBuilder b) updates]) =
      _$GCreateCargoServiceInput;

  @BuiltValueField(wireName: '__typename')
  String? get G__typename;
  String get arrivePlace;
  BuiltList<String> get cargoTypesIds;
  GCellphoneAttributes? get contactNumber;
  String get departurePlace;
  String? get description;
  String? get dueOn;
  String get title;
  String? get clientMutationId;
  static Serializer<GCreateCargoServiceInput> get serializer =>
      _$gCreateCargoServiceInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateCargoServiceInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateCargoServiceInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateCargoServiceInput.serializer, json);
}

abstract class GSignInInput
    implements Built<GSignInInput, GSignInInputBuilder> {
  GSignInInput._();

  factory GSignInInput([Function(GSignInInputBuilder b) updates]) =
      _$GSignInInput;

  @BuiltValueField(wireName: '__typename')
  String? get G__typename;
  GCellphoneAttributes get cellphone;
  String get password;
  String? get clientMutationId;
  static Serializer<GSignInInput> get serializer => _$gSignInInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignInInput.serializer, this)
          as Map<String, dynamic>);
  static GSignInInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignInInput.serializer, json);
}

abstract class GSignUpInput
    implements Built<GSignUpInput, GSignUpInputBuilder> {
  GSignUpInput._();

  factory GSignUpInput([Function(GSignUpInputBuilder b) updates]) =
      _$GSignUpInput;

  @BuiltValueField(wireName: '__typename')
  String? get G__typename;
  GCellphoneAttributes get cellphone;
  String get password;
  String get userType;
  GUserAdminAttributes? get adminData;
  GUserBuyerAttributes? get buyerData;
  GUserCarrierAttributes? get carrierData;
  String? get clientMutationId;
  static Serializer<GSignUpInput> get serializer => _$gSignUpInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignUpInput.serializer, this)
          as Map<String, dynamic>);
  static GSignUpInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignUpInput.serializer, json);
}

abstract class GUserAdminAttributes
    implements Built<GUserAdminAttributes, GUserAdminAttributesBuilder> {
  GUserAdminAttributes._();

  factory GUserAdminAttributes(
          [Function(GUserAdminAttributesBuilder b) updates]) =
      _$GUserAdminAttributes;

  String get role;
  String get email;
  static Serializer<GUserAdminAttributes> get serializer =>
      _$gUserAdminAttributesSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserAdminAttributes.serializer, this)
          as Map<String, dynamic>);
  static GUserAdminAttributes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserAdminAttributes.serializer, json);
}

abstract class GUserBuyerAttributes
    implements Built<GUserBuyerAttributes, GUserBuyerAttributesBuilder> {
  GUserBuyerAttributes._();

  factory GUserBuyerAttributes(
          [Function(GUserBuyerAttributesBuilder b) updates]) =
      _$GUserBuyerAttributes;

  String get businessName;
  String get fullName;
  String get email;
  String? get moralPerson;
  String? get physicalPerson;
  static Serializer<GUserBuyerAttributes> get serializer =>
      _$gUserBuyerAttributesSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserBuyerAttributes.serializer, this)
          as Map<String, dynamic>);
  static GUserBuyerAttributes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserBuyerAttributes.serializer, json);
}

abstract class GUserCarrierAttributes
    implements Built<GUserCarrierAttributes, GUserCarrierAttributesBuilder> {
  GUserCarrierAttributes._();

  factory GUserCarrierAttributes(
          [Function(GUserCarrierAttributesBuilder b) updates]) =
      _$GUserCarrierAttributes;

  String get address;
  String get companyName;
  String get email;
  String get fullName;
  String get legalCard;
  String? get moralPerson;
  String? get physicalPerson;
  static Serializer<GUserCarrierAttributes> get serializer =>
      _$gUserCarrierAttributesSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserCarrierAttributes.serializer, this)
          as Map<String, dynamic>);
  static GUserCarrierAttributes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserCarrierAttributes.serializer, json);
}
