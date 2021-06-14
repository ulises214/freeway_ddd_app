// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:freeway_app/graphql/schema.schema.gql.dart' as _i1;
import 'package:freeway_app/graphql/serializers.gql.dart' as _i2;

part 'login.var.gql.g.dart';

abstract class GLoginVars implements Built<GLoginVars, GLoginVarsBuilder> {
  GLoginVars._();

  factory GLoginVars([Function(GLoginVarsBuilder b) updates]) = _$GLoginVars;

  _i1.GSignInInput get input;
  static Serializer<GLoginVars> get serializer => _$gLoginVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GLoginVars.serializer, this)
          as Map<String, dynamic>);
  static GLoginVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GLoginVars.serializer, json);
}
