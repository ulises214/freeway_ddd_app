// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:freeway_app/graphql/serializers.gql.dart' as _i1;

part 'login.data.gql.g.dart';

abstract class GLoginData implements Built<GLoginData, GLoginDataBuilder> {
  GLoginData._();

  factory GLoginData([Function(GLoginDataBuilder b) updates]) = _$GLoginData;

  static void _initializeBuilder(GLoginDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoginData_signIn? get signIn;
  static Serializer<GLoginData> get serializer => _$gLoginDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginData.serializer, this)
          as Map<String, dynamic>);
  static GLoginData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginData.serializer, json);
}

abstract class GLoginData_signIn
    implements Built<GLoginData_signIn, GLoginData_signInBuilder> {
  GLoginData_signIn._();

  factory GLoginData_signIn([Function(GLoginData_signInBuilder b) updates]) =
      _$GLoginData_signIn;

  static void _initializeBuilder(GLoginData_signInBuilder b) =>
      b..G__typename = 'SignInPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  GLoginData_signIn_user? get user;
  static Serializer<GLoginData_signIn> get serializer =>
      _$gLoginDataSignInSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginData_signIn.serializer, this)
          as Map<String, dynamic>);
  static GLoginData_signIn? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginData_signIn.serializer, json);
}

abstract class GLoginData_signIn_user
    implements Built<GLoginData_signIn_user, GLoginData_signIn_userBuilder> {
  GLoginData_signIn_user._();

  factory GLoginData_signIn_user(
          [Function(GLoginData_signIn_userBuilder b) updates]) =
      _$GLoginData_signIn_user;

  static void _initializeBuilder(GLoginData_signIn_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoginData_signIn_user_cellphone get cellphone;
  static Serializer<GLoginData_signIn_user> get serializer =>
      _$gLoginDataSignInUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginData_signIn_user.serializer, this)
          as Map<String, dynamic>);
  static GLoginData_signIn_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginData_signIn_user.serializer, json);
}

abstract class GLoginData_signIn_user_cellphone
    implements
        Built<GLoginData_signIn_user_cellphone,
            GLoginData_signIn_user_cellphoneBuilder> {
  GLoginData_signIn_user_cellphone._();

  factory GLoginData_signIn_user_cellphone(
          [Function(GLoginData_signIn_user_cellphoneBuilder b) updates]) =
      _$GLoginData_signIn_user_cellphone;

  static void _initializeBuilder(GLoginData_signIn_user_cellphoneBuilder b) =>
      b..G__typename = 'Cellphone';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get number;
  String get lada;
  static Serializer<GLoginData_signIn_user_cellphone> get serializer =>
      _$gLoginDataSignInUserCellphoneSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GLoginData_signIn_user_cellphone.serializer, this)
      as Map<String, dynamic>);
  static GLoginData_signIn_user_cellphone? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLoginData_signIn_user_cellphone.serializer, json);
}
