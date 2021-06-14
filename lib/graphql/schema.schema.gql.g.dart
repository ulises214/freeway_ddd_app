// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCargoServiceStateUpdateInput>
    _$gCargoServiceStateUpdateInputSerializer =
    new _$GCargoServiceStateUpdateInputSerializer();
Serializer<GCellphoneAttributes> _$gCellphoneAttributesSerializer =
    new _$GCellphoneAttributesSerializer();
Serializer<GCreateCargoServiceInput> _$gCreateCargoServiceInputSerializer =
    new _$GCreateCargoServiceInputSerializer();
Serializer<GSignInInput> _$gSignInInputSerializer =
    new _$GSignInInputSerializer();
Serializer<GSignUpInput> _$gSignUpInputSerializer =
    new _$GSignUpInputSerializer();
Serializer<GUserAdminAttributes> _$gUserAdminAttributesSerializer =
    new _$GUserAdminAttributesSerializer();
Serializer<GUserBuyerAttributes> _$gUserBuyerAttributesSerializer =
    new _$GUserBuyerAttributesSerializer();
Serializer<GUserCarrierAttributes> _$gUserCarrierAttributesSerializer =
    new _$GUserCarrierAttributesSerializer();

class _$GCargoServiceStateUpdateInputSerializer
    implements StructuredSerializer<GCargoServiceStateUpdateInput> {
  @override
  final Iterable<Type> types = const [
    GCargoServiceStateUpdateInput,
    _$GCargoServiceStateUpdateInput
  ];
  @override
  final String wireName = 'GCargoServiceStateUpdateInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCargoServiceStateUpdateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cargoServiceId',
      serializers.serialize(object.cargoServiceId,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.G__typename;
    if (value != null) {
      result
        ..add('__typename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCargoServiceStateUpdateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCargoServiceStateUpdateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cargoServiceId':
          result.cargoServiceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCellphoneAttributesSerializer
    implements StructuredSerializer<GCellphoneAttributes> {
  @override
  final Iterable<Type> types = const [
    GCellphoneAttributes,
    _$GCellphoneAttributes
  ];
  @override
  final String wireName = 'GCellphoneAttributes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCellphoneAttributes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lada',
      serializers.serialize(object.lada, specifiedType: const FullType(String)),
      'number',
      serializers.serialize(object.number,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCellphoneAttributes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCellphoneAttributesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lada':
          result.lada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCargoServiceInputSerializer
    implements StructuredSerializer<GCreateCargoServiceInput> {
  @override
  final Iterable<Type> types = const [
    GCreateCargoServiceInput,
    _$GCreateCargoServiceInput
  ];
  @override
  final String wireName = 'GCreateCargoServiceInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCargoServiceInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'arrivePlace',
      serializers.serialize(object.arrivePlace,
          specifiedType: const FullType(String)),
      'cargoTypesIds',
      serializers.serialize(object.cargoTypesIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'departurePlace',
      serializers.serialize(object.departurePlace,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.G__typename;
    if (value != null) {
      result
        ..add('__typename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactNumber;
    if (value != null) {
      result
        ..add('contactNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCellphoneAttributes)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dueOn;
    if (value != null) {
      result
        ..add('dueOn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateCargoServiceInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCargoServiceInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'arrivePlace':
          result.arrivePlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cargoTypesIds':
          result.cargoTypesIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'contactNumber':
          result.contactNumber.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCellphoneAttributes))!
              as GCellphoneAttributes);
          break;
        case 'departurePlace':
          result.departurePlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dueOn':
          result.dueOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInInputSerializer implements StructuredSerializer<GSignInInput> {
  @override
  final Iterable<Type> types = const [GSignInInput, _$GSignInInput];
  @override
  final String wireName = 'GSignInInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cellphone',
      serializers.serialize(object.cellphone,
          specifiedType: const FullType(GCellphoneAttributes)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.G__typename;
    if (value != null) {
      result
        ..add('__typename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSignInInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cellphone':
          result.cellphone.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCellphoneAttributes))!
              as GCellphoneAttributes);
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpInputSerializer implements StructuredSerializer<GSignUpInput> {
  @override
  final Iterable<Type> types = const [GSignUpInput, _$GSignUpInput];
  @override
  final String wireName = 'GSignUpInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignUpInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cellphone',
      serializers.serialize(object.cellphone,
          specifiedType: const FullType(GCellphoneAttributes)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'userType',
      serializers.serialize(object.userType,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.G__typename;
    if (value != null) {
      result
        ..add('__typename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adminData;
    if (value != null) {
      result
        ..add('adminData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserAdminAttributes)));
    }
    value = object.buyerData;
    if (value != null) {
      result
        ..add('buyerData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserBuyerAttributes)));
    }
    value = object.carrierData;
    if (value != null) {
      result
        ..add('carrierData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserCarrierAttributes)));
    }
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSignUpInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cellphone':
          result.cellphone.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCellphoneAttributes))!
              as GCellphoneAttributes);
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adminData':
          result.adminData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserAdminAttributes))!
              as GUserAdminAttributes);
          break;
        case 'buyerData':
          result.buyerData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserBuyerAttributes))!
              as GUserBuyerAttributes);
          break;
        case 'carrierData':
          result.carrierData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserCarrierAttributes))!
              as GUserCarrierAttributes);
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserAdminAttributesSerializer
    implements StructuredSerializer<GUserAdminAttributes> {
  @override
  final Iterable<Type> types = const [
    GUserAdminAttributes,
    _$GUserAdminAttributes
  ];
  @override
  final String wireName = 'GUserAdminAttributes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserAdminAttributes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserAdminAttributes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserAdminAttributesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserBuyerAttributesSerializer
    implements StructuredSerializer<GUserBuyerAttributes> {
  @override
  final Iterable<Type> types = const [
    GUserBuyerAttributes,
    _$GUserBuyerAttributes
  ];
  @override
  final String wireName = 'GUserBuyerAttributes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserBuyerAttributes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'businessName',
      serializers.serialize(object.businessName,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.moralPerson;
    if (value != null) {
      result
        ..add('moralPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.physicalPerson;
    if (value != null) {
      result
        ..add('physicalPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserBuyerAttributes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserBuyerAttributesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'businessName':
          result.businessName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moralPerson':
          result.moralPerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'physicalPerson':
          result.physicalPerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserCarrierAttributesSerializer
    implements StructuredSerializer<GUserCarrierAttributes> {
  @override
  final Iterable<Type> types = const [
    GUserCarrierAttributes,
    _$GUserCarrierAttributes
  ];
  @override
  final String wireName = 'GUserCarrierAttributes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserCarrierAttributes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'companyName',
      serializers.serialize(object.companyName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'legalCard',
      serializers.serialize(object.legalCard,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.moralPerson;
    if (value != null) {
      result
        ..add('moralPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.physicalPerson;
    if (value != null) {
      result
        ..add('physicalPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserCarrierAttributes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserCarrierAttributesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'legalCard':
          result.legalCard = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moralPerson':
          result.moralPerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'physicalPerson':
          result.physicalPerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCargoServiceStateUpdateInput extends GCargoServiceStateUpdateInput {
  @override
  final String? G__typename;
  @override
  final String cargoServiceId;
  @override
  final String state;
  @override
  final String? clientMutationId;

  factory _$GCargoServiceStateUpdateInput(
          [void Function(GCargoServiceStateUpdateInputBuilder)? updates]) =>
      (new GCargoServiceStateUpdateInputBuilder()..update(updates)).build();

  _$GCargoServiceStateUpdateInput._(
      {this.G__typename,
      required this.cargoServiceId,
      required this.state,
      this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cargoServiceId, 'GCargoServiceStateUpdateInput', 'cargoServiceId');
    BuiltValueNullFieldError.checkNotNull(
        state, 'GCargoServiceStateUpdateInput', 'state');
  }

  @override
  GCargoServiceStateUpdateInput rebuild(
          void Function(GCargoServiceStateUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCargoServiceStateUpdateInputBuilder toBuilder() =>
      new GCargoServiceStateUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCargoServiceStateUpdateInput &&
        G__typename == other.G__typename &&
        cargoServiceId == other.cargoServiceId &&
        state == other.state &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), cargoServiceId.hashCode),
            state.hashCode),
        clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCargoServiceStateUpdateInput')
          ..add('G__typename', G__typename)
          ..add('cargoServiceId', cargoServiceId)
          ..add('state', state)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GCargoServiceStateUpdateInputBuilder
    implements
        Builder<GCargoServiceStateUpdateInput,
            GCargoServiceStateUpdateInputBuilder> {
  _$GCargoServiceStateUpdateInput? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _cargoServiceId;
  String? get cargoServiceId => _$this._cargoServiceId;
  set cargoServiceId(String? cargoServiceId) =>
      _$this._cargoServiceId = cargoServiceId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GCargoServiceStateUpdateInputBuilder();

  GCargoServiceStateUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cargoServiceId = $v.cargoServiceId;
      _state = $v.state;
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCargoServiceStateUpdateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCargoServiceStateUpdateInput;
  }

  @override
  void update(void Function(GCargoServiceStateUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCargoServiceStateUpdateInput build() {
    final _$result = _$v ??
        new _$GCargoServiceStateUpdateInput._(
            G__typename: G__typename,
            cargoServiceId: BuiltValueNullFieldError.checkNotNull(
                cargoServiceId,
                'GCargoServiceStateUpdateInput',
                'cargoServiceId'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, 'GCargoServiceStateUpdateInput', 'state'),
            clientMutationId: clientMutationId);
    replace(_$result);
    return _$result;
  }
}

class _$GCellphoneAttributes extends GCellphoneAttributes {
  @override
  final String lada;
  @override
  final String number;

  factory _$GCellphoneAttributes(
          [void Function(GCellphoneAttributesBuilder)? updates]) =>
      (new GCellphoneAttributesBuilder()..update(updates)).build();

  _$GCellphoneAttributes._({required this.lada, required this.number})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(lada, 'GCellphoneAttributes', 'lada');
    BuiltValueNullFieldError.checkNotNull(
        number, 'GCellphoneAttributes', 'number');
  }

  @override
  GCellphoneAttributes rebuild(
          void Function(GCellphoneAttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCellphoneAttributesBuilder toBuilder() =>
      new GCellphoneAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCellphoneAttributes &&
        lada == other.lada &&
        number == other.number;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lada.hashCode), number.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCellphoneAttributes')
          ..add('lada', lada)
          ..add('number', number))
        .toString();
  }
}

class GCellphoneAttributesBuilder
    implements Builder<GCellphoneAttributes, GCellphoneAttributesBuilder> {
  _$GCellphoneAttributes? _$v;

  String? _lada;
  String? get lada => _$this._lada;
  set lada(String? lada) => _$this._lada = lada;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  GCellphoneAttributesBuilder();

  GCellphoneAttributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lada = $v.lada;
      _number = $v.number;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCellphoneAttributes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCellphoneAttributes;
  }

  @override
  void update(void Function(GCellphoneAttributesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCellphoneAttributes build() {
    final _$result = _$v ??
        new _$GCellphoneAttributes._(
            lada: BuiltValueNullFieldError.checkNotNull(
                lada, 'GCellphoneAttributes', 'lada'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'GCellphoneAttributes', 'number'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCargoServiceInput extends GCreateCargoServiceInput {
  @override
  final String? G__typename;
  @override
  final String arrivePlace;
  @override
  final BuiltList<String> cargoTypesIds;
  @override
  final GCellphoneAttributes? contactNumber;
  @override
  final String departurePlace;
  @override
  final String? description;
  @override
  final String? dueOn;
  @override
  final String title;
  @override
  final String? clientMutationId;

  factory _$GCreateCargoServiceInput(
          [void Function(GCreateCargoServiceInputBuilder)? updates]) =>
      (new GCreateCargoServiceInputBuilder()..update(updates)).build();

  _$GCreateCargoServiceInput._(
      {this.G__typename,
      required this.arrivePlace,
      required this.cargoTypesIds,
      this.contactNumber,
      required this.departurePlace,
      this.description,
      this.dueOn,
      required this.title,
      this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        arrivePlace, 'GCreateCargoServiceInput', 'arrivePlace');
    BuiltValueNullFieldError.checkNotNull(
        cargoTypesIds, 'GCreateCargoServiceInput', 'cargoTypesIds');
    BuiltValueNullFieldError.checkNotNull(
        departurePlace, 'GCreateCargoServiceInput', 'departurePlace');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GCreateCargoServiceInput', 'title');
  }

  @override
  GCreateCargoServiceInput rebuild(
          void Function(GCreateCargoServiceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCargoServiceInputBuilder toBuilder() =>
      new GCreateCargoServiceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCargoServiceInput &&
        G__typename == other.G__typename &&
        arrivePlace == other.arrivePlace &&
        cargoTypesIds == other.cargoTypesIds &&
        contactNumber == other.contactNumber &&
        departurePlace == other.departurePlace &&
        description == other.description &&
        dueOn == other.dueOn &&
        title == other.title &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, G__typename.hashCode),
                                    arrivePlace.hashCode),
                                cargoTypesIds.hashCode),
                            contactNumber.hashCode),
                        departurePlace.hashCode),
                    description.hashCode),
                dueOn.hashCode),
            title.hashCode),
        clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateCargoServiceInput')
          ..add('G__typename', G__typename)
          ..add('arrivePlace', arrivePlace)
          ..add('cargoTypesIds', cargoTypesIds)
          ..add('contactNumber', contactNumber)
          ..add('departurePlace', departurePlace)
          ..add('description', description)
          ..add('dueOn', dueOn)
          ..add('title', title)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GCreateCargoServiceInputBuilder
    implements
        Builder<GCreateCargoServiceInput, GCreateCargoServiceInputBuilder> {
  _$GCreateCargoServiceInput? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _arrivePlace;
  String? get arrivePlace => _$this._arrivePlace;
  set arrivePlace(String? arrivePlace) => _$this._arrivePlace = arrivePlace;

  ListBuilder<String>? _cargoTypesIds;
  ListBuilder<String> get cargoTypesIds =>
      _$this._cargoTypesIds ??= new ListBuilder<String>();
  set cargoTypesIds(ListBuilder<String>? cargoTypesIds) =>
      _$this._cargoTypesIds = cargoTypesIds;

  GCellphoneAttributesBuilder? _contactNumber;
  GCellphoneAttributesBuilder get contactNumber =>
      _$this._contactNumber ??= new GCellphoneAttributesBuilder();
  set contactNumber(GCellphoneAttributesBuilder? contactNumber) =>
      _$this._contactNumber = contactNumber;

  String? _departurePlace;
  String? get departurePlace => _$this._departurePlace;
  set departurePlace(String? departurePlace) =>
      _$this._departurePlace = departurePlace;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _dueOn;
  String? get dueOn => _$this._dueOn;
  set dueOn(String? dueOn) => _$this._dueOn = dueOn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GCreateCargoServiceInputBuilder();

  GCreateCargoServiceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _arrivePlace = $v.arrivePlace;
      _cargoTypesIds = $v.cargoTypesIds.toBuilder();
      _contactNumber = $v.contactNumber?.toBuilder();
      _departurePlace = $v.departurePlace;
      _description = $v.description;
      _dueOn = $v.dueOn;
      _title = $v.title;
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCargoServiceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCargoServiceInput;
  }

  @override
  void update(void Function(GCreateCargoServiceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateCargoServiceInput build() {
    _$GCreateCargoServiceInput _$result;
    try {
      _$result = _$v ??
          new _$GCreateCargoServiceInput._(
              G__typename: G__typename,
              arrivePlace: BuiltValueNullFieldError.checkNotNull(
                  arrivePlace, 'GCreateCargoServiceInput', 'arrivePlace'),
              cargoTypesIds: cargoTypesIds.build(),
              contactNumber: _contactNumber?.build(),
              departurePlace: BuiltValueNullFieldError.checkNotNull(
                  departurePlace, 'GCreateCargoServiceInput', 'departurePlace'),
              description: description,
              dueOn: dueOn,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GCreateCargoServiceInput', 'title'),
              clientMutationId: clientMutationId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cargoTypesIds';
        cargoTypesIds.build();
        _$failedField = 'contactNumber';
        _contactNumber?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateCargoServiceInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInInput extends GSignInInput {
  @override
  final String? G__typename;
  @override
  final GCellphoneAttributes cellphone;
  @override
  final String password;
  @override
  final String? clientMutationId;

  factory _$GSignInInput([void Function(GSignInInputBuilder)? updates]) =>
      (new GSignInInputBuilder()..update(updates)).build();

  _$GSignInInput._(
      {this.G__typename,
      required this.cellphone,
      required this.password,
      this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cellphone, 'GSignInInput', 'cellphone');
    BuiltValueNullFieldError.checkNotNull(password, 'GSignInInput', 'password');
  }

  @override
  GSignInInput rebuild(void Function(GSignInInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInInputBuilder toBuilder() => new GSignInInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInInput &&
        G__typename == other.G__typename &&
        cellphone == other.cellphone &&
        password == other.password &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), cellphone.hashCode),
            password.hashCode),
        clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignInInput')
          ..add('G__typename', G__typename)
          ..add('cellphone', cellphone)
          ..add('password', password)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GSignInInputBuilder
    implements Builder<GSignInInput, GSignInInputBuilder> {
  _$GSignInInput? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCellphoneAttributesBuilder? _cellphone;
  GCellphoneAttributesBuilder get cellphone =>
      _$this._cellphone ??= new GCellphoneAttributesBuilder();
  set cellphone(GCellphoneAttributesBuilder? cellphone) =>
      _$this._cellphone = cellphone;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GSignInInputBuilder();

  GSignInInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cellphone = $v.cellphone.toBuilder();
      _password = $v.password;
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInInput;
  }

  @override
  void update(void Function(GSignInInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignInInput build() {
    _$GSignInInput _$result;
    try {
      _$result = _$v ??
          new _$GSignInInput._(
              G__typename: G__typename,
              cellphone: cellphone.build(),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, 'GSignInInput', 'password'),
              clientMutationId: clientMutationId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cellphone';
        cellphone.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSignInInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignUpInput extends GSignUpInput {
  @override
  final String? G__typename;
  @override
  final GCellphoneAttributes cellphone;
  @override
  final String password;
  @override
  final String userType;
  @override
  final GUserAdminAttributes? adminData;
  @override
  final GUserBuyerAttributes? buyerData;
  @override
  final GUserCarrierAttributes? carrierData;
  @override
  final String? clientMutationId;

  factory _$GSignUpInput([void Function(GSignUpInputBuilder)? updates]) =>
      (new GSignUpInputBuilder()..update(updates)).build();

  _$GSignUpInput._(
      {this.G__typename,
      required this.cellphone,
      required this.password,
      required this.userType,
      this.adminData,
      this.buyerData,
      this.carrierData,
      this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cellphone, 'GSignUpInput', 'cellphone');
    BuiltValueNullFieldError.checkNotNull(password, 'GSignUpInput', 'password');
    BuiltValueNullFieldError.checkNotNull(userType, 'GSignUpInput', 'userType');
  }

  @override
  GSignUpInput rebuild(void Function(GSignUpInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpInputBuilder toBuilder() => new GSignUpInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpInput &&
        G__typename == other.G__typename &&
        cellphone == other.cellphone &&
        password == other.password &&
        userType == other.userType &&
        adminData == other.adminData &&
        buyerData == other.buyerData &&
        carrierData == other.carrierData &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, G__typename.hashCode),
                                cellphone.hashCode),
                            password.hashCode),
                        userType.hashCode),
                    adminData.hashCode),
                buyerData.hashCode),
            carrierData.hashCode),
        clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignUpInput')
          ..add('G__typename', G__typename)
          ..add('cellphone', cellphone)
          ..add('password', password)
          ..add('userType', userType)
          ..add('adminData', adminData)
          ..add('buyerData', buyerData)
          ..add('carrierData', carrierData)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GSignUpInputBuilder
    implements Builder<GSignUpInput, GSignUpInputBuilder> {
  _$GSignUpInput? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCellphoneAttributesBuilder? _cellphone;
  GCellphoneAttributesBuilder get cellphone =>
      _$this._cellphone ??= new GCellphoneAttributesBuilder();
  set cellphone(GCellphoneAttributesBuilder? cellphone) =>
      _$this._cellphone = cellphone;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  GUserAdminAttributesBuilder? _adminData;
  GUserAdminAttributesBuilder get adminData =>
      _$this._adminData ??= new GUserAdminAttributesBuilder();
  set adminData(GUserAdminAttributesBuilder? adminData) =>
      _$this._adminData = adminData;

  GUserBuyerAttributesBuilder? _buyerData;
  GUserBuyerAttributesBuilder get buyerData =>
      _$this._buyerData ??= new GUserBuyerAttributesBuilder();
  set buyerData(GUserBuyerAttributesBuilder? buyerData) =>
      _$this._buyerData = buyerData;

  GUserCarrierAttributesBuilder? _carrierData;
  GUserCarrierAttributesBuilder get carrierData =>
      _$this._carrierData ??= new GUserCarrierAttributesBuilder();
  set carrierData(GUserCarrierAttributesBuilder? carrierData) =>
      _$this._carrierData = carrierData;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GSignUpInputBuilder();

  GSignUpInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cellphone = $v.cellphone.toBuilder();
      _password = $v.password;
      _userType = $v.userType;
      _adminData = $v.adminData?.toBuilder();
      _buyerData = $v.buyerData?.toBuilder();
      _carrierData = $v.carrierData?.toBuilder();
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpInput;
  }

  @override
  void update(void Function(GSignUpInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignUpInput build() {
    _$GSignUpInput _$result;
    try {
      _$result = _$v ??
          new _$GSignUpInput._(
              G__typename: G__typename,
              cellphone: cellphone.build(),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, 'GSignUpInput', 'password'),
              userType: BuiltValueNullFieldError.checkNotNull(
                  userType, 'GSignUpInput', 'userType'),
              adminData: _adminData?.build(),
              buyerData: _buyerData?.build(),
              carrierData: _carrierData?.build(),
              clientMutationId: clientMutationId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cellphone';
        cellphone.build();

        _$failedField = 'adminData';
        _adminData?.build();
        _$failedField = 'buyerData';
        _buyerData?.build();
        _$failedField = 'carrierData';
        _carrierData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSignUpInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserAdminAttributes extends GUserAdminAttributes {
  @override
  final String role;
  @override
  final String email;

  factory _$GUserAdminAttributes(
          [void Function(GUserAdminAttributesBuilder)? updates]) =>
      (new GUserAdminAttributesBuilder()..update(updates)).build();

  _$GUserAdminAttributes._({required this.role, required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(role, 'GUserAdminAttributes', 'role');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GUserAdminAttributes', 'email');
  }

  @override
  GUserAdminAttributes rebuild(
          void Function(GUserAdminAttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserAdminAttributesBuilder toBuilder() =>
      new GUserAdminAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserAdminAttributes &&
        role == other.role &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, role.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserAdminAttributes')
          ..add('role', role)
          ..add('email', email))
        .toString();
  }
}

class GUserAdminAttributesBuilder
    implements Builder<GUserAdminAttributes, GUserAdminAttributesBuilder> {
  _$GUserAdminAttributes? _$v;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GUserAdminAttributesBuilder();

  GUserAdminAttributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserAdminAttributes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserAdminAttributes;
  }

  @override
  void update(void Function(GUserAdminAttributesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserAdminAttributes build() {
    final _$result = _$v ??
        new _$GUserAdminAttributes._(
            role: BuiltValueNullFieldError.checkNotNull(
                role, 'GUserAdminAttributes', 'role'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GUserAdminAttributes', 'email'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserBuyerAttributes extends GUserBuyerAttributes {
  @override
  final String businessName;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String? moralPerson;
  @override
  final String? physicalPerson;

  factory _$GUserBuyerAttributes(
          [void Function(GUserBuyerAttributesBuilder)? updates]) =>
      (new GUserBuyerAttributesBuilder()..update(updates)).build();

  _$GUserBuyerAttributes._(
      {required this.businessName,
      required this.fullName,
      required this.email,
      this.moralPerson,
      this.physicalPerson})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        businessName, 'GUserBuyerAttributes', 'businessName');
    BuiltValueNullFieldError.checkNotNull(
        fullName, 'GUserBuyerAttributes', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GUserBuyerAttributes', 'email');
  }

  @override
  GUserBuyerAttributes rebuild(
          void Function(GUserBuyerAttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserBuyerAttributesBuilder toBuilder() =>
      new GUserBuyerAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserBuyerAttributes &&
        businessName == other.businessName &&
        fullName == other.fullName &&
        email == other.email &&
        moralPerson == other.moralPerson &&
        physicalPerson == other.physicalPerson;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, businessName.hashCode), fullName.hashCode),
                email.hashCode),
            moralPerson.hashCode),
        physicalPerson.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserBuyerAttributes')
          ..add('businessName', businessName)
          ..add('fullName', fullName)
          ..add('email', email)
          ..add('moralPerson', moralPerson)
          ..add('physicalPerson', physicalPerson))
        .toString();
  }
}

class GUserBuyerAttributesBuilder
    implements Builder<GUserBuyerAttributes, GUserBuyerAttributesBuilder> {
  _$GUserBuyerAttributes? _$v;

  String? _businessName;
  String? get businessName => _$this._businessName;
  set businessName(String? businessName) => _$this._businessName = businessName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _moralPerson;
  String? get moralPerson => _$this._moralPerson;
  set moralPerson(String? moralPerson) => _$this._moralPerson = moralPerson;

  String? _physicalPerson;
  String? get physicalPerson => _$this._physicalPerson;
  set physicalPerson(String? physicalPerson) =>
      _$this._physicalPerson = physicalPerson;

  GUserBuyerAttributesBuilder();

  GUserBuyerAttributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _businessName = $v.businessName;
      _fullName = $v.fullName;
      _email = $v.email;
      _moralPerson = $v.moralPerson;
      _physicalPerson = $v.physicalPerson;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserBuyerAttributes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserBuyerAttributes;
  }

  @override
  void update(void Function(GUserBuyerAttributesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserBuyerAttributes build() {
    final _$result = _$v ??
        new _$GUserBuyerAttributes._(
            businessName: BuiltValueNullFieldError.checkNotNull(
                businessName, 'GUserBuyerAttributes', 'businessName'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, 'GUserBuyerAttributes', 'fullName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GUserBuyerAttributes', 'email'),
            moralPerson: moralPerson,
            physicalPerson: physicalPerson);
    replace(_$result);
    return _$result;
  }
}

class _$GUserCarrierAttributes extends GUserCarrierAttributes {
  @override
  final String address;
  @override
  final String companyName;
  @override
  final String email;
  @override
  final String fullName;
  @override
  final String legalCard;
  @override
  final String? moralPerson;
  @override
  final String? physicalPerson;

  factory _$GUserCarrierAttributes(
          [void Function(GUserCarrierAttributesBuilder)? updates]) =>
      (new GUserCarrierAttributesBuilder()..update(updates)).build();

  _$GUserCarrierAttributes._(
      {required this.address,
      required this.companyName,
      required this.email,
      required this.fullName,
      required this.legalCard,
      this.moralPerson,
      this.physicalPerson})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, 'GUserCarrierAttributes', 'address');
    BuiltValueNullFieldError.checkNotNull(
        companyName, 'GUserCarrierAttributes', 'companyName');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GUserCarrierAttributes', 'email');
    BuiltValueNullFieldError.checkNotNull(
        fullName, 'GUserCarrierAttributes', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        legalCard, 'GUserCarrierAttributes', 'legalCard');
  }

  @override
  GUserCarrierAttributes rebuild(
          void Function(GUserCarrierAttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserCarrierAttributesBuilder toBuilder() =>
      new GUserCarrierAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserCarrierAttributes &&
        address == other.address &&
        companyName == other.companyName &&
        email == other.email &&
        fullName == other.fullName &&
        legalCard == other.legalCard &&
        moralPerson == other.moralPerson &&
        physicalPerson == other.physicalPerson;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, address.hashCode), companyName.hashCode),
                        email.hashCode),
                    fullName.hashCode),
                legalCard.hashCode),
            moralPerson.hashCode),
        physicalPerson.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserCarrierAttributes')
          ..add('address', address)
          ..add('companyName', companyName)
          ..add('email', email)
          ..add('fullName', fullName)
          ..add('legalCard', legalCard)
          ..add('moralPerson', moralPerson)
          ..add('physicalPerson', physicalPerson))
        .toString();
  }
}

class GUserCarrierAttributesBuilder
    implements Builder<GUserCarrierAttributes, GUserCarrierAttributesBuilder> {
  _$GUserCarrierAttributes? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _legalCard;
  String? get legalCard => _$this._legalCard;
  set legalCard(String? legalCard) => _$this._legalCard = legalCard;

  String? _moralPerson;
  String? get moralPerson => _$this._moralPerson;
  set moralPerson(String? moralPerson) => _$this._moralPerson = moralPerson;

  String? _physicalPerson;
  String? get physicalPerson => _$this._physicalPerson;
  set physicalPerson(String? physicalPerson) =>
      _$this._physicalPerson = physicalPerson;

  GUserCarrierAttributesBuilder();

  GUserCarrierAttributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _companyName = $v.companyName;
      _email = $v.email;
      _fullName = $v.fullName;
      _legalCard = $v.legalCard;
      _moralPerson = $v.moralPerson;
      _physicalPerson = $v.physicalPerson;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserCarrierAttributes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserCarrierAttributes;
  }

  @override
  void update(void Function(GUserCarrierAttributesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserCarrierAttributes build() {
    final _$result = _$v ??
        new _$GUserCarrierAttributes._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'GUserCarrierAttributes', 'address'),
            companyName: BuiltValueNullFieldError.checkNotNull(
                companyName, 'GUserCarrierAttributes', 'companyName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GUserCarrierAttributes', 'email'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, 'GUserCarrierAttributes', 'fullName'),
            legalCard: BuiltValueNullFieldError.checkNotNull(
                legalCard, 'GUserCarrierAttributes', 'legalCard'),
            moralPerson: moralPerson,
            physicalPerson: physicalPerson);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
