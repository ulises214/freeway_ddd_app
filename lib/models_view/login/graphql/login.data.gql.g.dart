// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginData> _$gLoginDataSerializer = new _$GLoginDataSerializer();
Serializer<GLoginData_signIn> _$gLoginDataSignInSerializer =
    new _$GLoginData_signInSerializer();
Serializer<GLoginData_signIn_user> _$gLoginDataSignInUserSerializer =
    new _$GLoginData_signIn_userSerializer();
Serializer<GLoginData_signIn_user_cellphone>
    _$gLoginDataSignInUserCellphoneSerializer =
    new _$GLoginData_signIn_user_cellphoneSerializer();

class _$GLoginDataSerializer implements StructuredSerializer<GLoginData> {
  @override
  final Iterable<Type> types = const [GLoginData, _$GLoginData];
  @override
  final String wireName = 'GLoginData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.signIn;
    if (value != null) {
      result
        ..add('signIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLoginData_signIn)));
    }
    return result;
  }

  @override
  GLoginData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginDataBuilder();

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
        case 'signIn':
          result.signIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLoginData_signIn))!
              as GLoginData_signIn);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_signInSerializer
    implements StructuredSerializer<GLoginData_signIn> {
  @override
  final Iterable<Type> types = const [GLoginData_signIn, _$GLoginData_signIn];
  @override
  final String wireName = 'GLoginData_signIn';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginData_signIn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLoginData_signIn_user)));
    }
    return result;
  }

  @override
  GLoginData_signIn deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_signInBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLoginData_signIn_user))!
              as GLoginData_signIn_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_signIn_userSerializer
    implements StructuredSerializer<GLoginData_signIn_user> {
  @override
  final Iterable<Type> types = const [
    GLoginData_signIn_user,
    _$GLoginData_signIn_user
  ];
  @override
  final String wireName = 'GLoginData_signIn_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginData_signIn_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cellphone',
      serializers.serialize(object.cellphone,
          specifiedType: const FullType(GLoginData_signIn_user_cellphone)),
    ];

    return result;
  }

  @override
  GLoginData_signIn_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_signIn_userBuilder();

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
                  specifiedType:
                      const FullType(GLoginData_signIn_user_cellphone))!
              as GLoginData_signIn_user_cellphone);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_signIn_user_cellphoneSerializer
    implements StructuredSerializer<GLoginData_signIn_user_cellphone> {
  @override
  final Iterable<Type> types = const [
    GLoginData_signIn_user_cellphone,
    _$GLoginData_signIn_user_cellphone
  ];
  @override
  final String wireName = 'GLoginData_signIn_user_cellphone';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginData_signIn_user_cellphone object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'number',
      serializers.serialize(object.number,
          specifiedType: const FullType(String)),
      'lada',
      serializers.serialize(object.lada, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginData_signIn_user_cellphone deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_signIn_user_cellphoneBuilder();

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
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lada':
          result.lada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData extends GLoginData {
  @override
  final String G__typename;
  @override
  final GLoginData_signIn? signIn;

  factory _$GLoginData([void Function(GLoginDataBuilder)? updates]) =>
      (new GLoginDataBuilder()..update(updates)).build();

  _$GLoginData._({required this.G__typename, this.signIn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoginData', 'G__typename');
  }

  @override
  GLoginData rebuild(void Function(GLoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginDataBuilder toBuilder() => new GLoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData &&
        G__typename == other.G__typename &&
        signIn == other.signIn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), signIn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginData')
          ..add('G__typename', G__typename)
          ..add('signIn', signIn))
        .toString();
  }
}

class GLoginDataBuilder implements Builder<GLoginData, GLoginDataBuilder> {
  _$GLoginData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginData_signInBuilder? _signIn;
  GLoginData_signInBuilder get signIn =>
      _$this._signIn ??= new GLoginData_signInBuilder();
  set signIn(GLoginData_signInBuilder? signIn) => _$this._signIn = signIn;

  GLoginDataBuilder() {
    GLoginData._initializeBuilder(this);
  }

  GLoginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signIn = $v.signIn?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData;
  }

  @override
  void update(void Function(GLoginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginData build() {
    _$GLoginData _$result;
    try {
      _$result = _$v ??
          new _$GLoginData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLoginData', 'G__typename'),
              signIn: _signIn?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signIn';
        _signIn?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLoginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_signIn extends GLoginData_signIn {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final GLoginData_signIn_user? user;

  factory _$GLoginData_signIn(
          [void Function(GLoginData_signInBuilder)? updates]) =>
      (new GLoginData_signInBuilder()..update(updates)).build();

  _$GLoginData_signIn._(
      {required this.G__typename, required this.token, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoginData_signIn', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(token, 'GLoginData_signIn', 'token');
  }

  @override
  GLoginData_signIn rebuild(void Function(GLoginData_signInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_signInBuilder toBuilder() =>
      new GLoginData_signInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_signIn &&
        G__typename == other.G__typename &&
        token == other.token &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), token.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginData_signIn')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('user', user))
        .toString();
  }
}

class GLoginData_signInBuilder
    implements Builder<GLoginData_signIn, GLoginData_signInBuilder> {
  _$GLoginData_signIn? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GLoginData_signIn_userBuilder? _user;
  GLoginData_signIn_userBuilder get user =>
      _$this._user ??= new GLoginData_signIn_userBuilder();
  set user(GLoginData_signIn_userBuilder? user) => _$this._user = user;

  GLoginData_signInBuilder() {
    GLoginData_signIn._initializeBuilder(this);
  }

  GLoginData_signInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_signIn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_signIn;
  }

  @override
  void update(void Function(GLoginData_signInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginData_signIn build() {
    _$GLoginData_signIn _$result;
    try {
      _$result = _$v ??
          new _$GLoginData_signIn._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLoginData_signIn', 'G__typename'),
              token: BuiltValueNullFieldError.checkNotNull(
                  token, 'GLoginData_signIn', 'token'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLoginData_signIn', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_signIn_user extends GLoginData_signIn_user {
  @override
  final String G__typename;
  @override
  final GLoginData_signIn_user_cellphone cellphone;

  factory _$GLoginData_signIn_user(
          [void Function(GLoginData_signIn_userBuilder)? updates]) =>
      (new GLoginData_signIn_userBuilder()..update(updates)).build();

  _$GLoginData_signIn_user._(
      {required this.G__typename, required this.cellphone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoginData_signIn_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        cellphone, 'GLoginData_signIn_user', 'cellphone');
  }

  @override
  GLoginData_signIn_user rebuild(
          void Function(GLoginData_signIn_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_signIn_userBuilder toBuilder() =>
      new GLoginData_signIn_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_signIn_user &&
        G__typename == other.G__typename &&
        cellphone == other.cellphone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), cellphone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginData_signIn_user')
          ..add('G__typename', G__typename)
          ..add('cellphone', cellphone))
        .toString();
  }
}

class GLoginData_signIn_userBuilder
    implements Builder<GLoginData_signIn_user, GLoginData_signIn_userBuilder> {
  _$GLoginData_signIn_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginData_signIn_user_cellphoneBuilder? _cellphone;
  GLoginData_signIn_user_cellphoneBuilder get cellphone =>
      _$this._cellphone ??= new GLoginData_signIn_user_cellphoneBuilder();
  set cellphone(GLoginData_signIn_user_cellphoneBuilder? cellphone) =>
      _$this._cellphone = cellphone;

  GLoginData_signIn_userBuilder() {
    GLoginData_signIn_user._initializeBuilder(this);
  }

  GLoginData_signIn_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cellphone = $v.cellphone.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_signIn_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_signIn_user;
  }

  @override
  void update(void Function(GLoginData_signIn_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginData_signIn_user build() {
    _$GLoginData_signIn_user _$result;
    try {
      _$result = _$v ??
          new _$GLoginData_signIn_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLoginData_signIn_user', 'G__typename'),
              cellphone: cellphone.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cellphone';
        cellphone.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLoginData_signIn_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_signIn_user_cellphone
    extends GLoginData_signIn_user_cellphone {
  @override
  final String G__typename;
  @override
  final String number;
  @override
  final String lada;

  factory _$GLoginData_signIn_user_cellphone(
          [void Function(GLoginData_signIn_user_cellphoneBuilder)? updates]) =>
      (new GLoginData_signIn_user_cellphoneBuilder()..update(updates)).build();

  _$GLoginData_signIn_user_cellphone._(
      {required this.G__typename, required this.number, required this.lada})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoginData_signIn_user_cellphone', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        number, 'GLoginData_signIn_user_cellphone', 'number');
    BuiltValueNullFieldError.checkNotNull(
        lada, 'GLoginData_signIn_user_cellphone', 'lada');
  }

  @override
  GLoginData_signIn_user_cellphone rebuild(
          void Function(GLoginData_signIn_user_cellphoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_signIn_user_cellphoneBuilder toBuilder() =>
      new GLoginData_signIn_user_cellphoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_signIn_user_cellphone &&
        G__typename == other.G__typename &&
        number == other.number &&
        lada == other.lada;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), number.hashCode), lada.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginData_signIn_user_cellphone')
          ..add('G__typename', G__typename)
          ..add('number', number)
          ..add('lada', lada))
        .toString();
  }
}

class GLoginData_signIn_user_cellphoneBuilder
    implements
        Builder<GLoginData_signIn_user_cellphone,
            GLoginData_signIn_user_cellphoneBuilder> {
  _$GLoginData_signIn_user_cellphone? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _lada;
  String? get lada => _$this._lada;
  set lada(String? lada) => _$this._lada = lada;

  GLoginData_signIn_user_cellphoneBuilder() {
    GLoginData_signIn_user_cellphone._initializeBuilder(this);
  }

  GLoginData_signIn_user_cellphoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _number = $v.number;
      _lada = $v.lada;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_signIn_user_cellphone other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_signIn_user_cellphone;
  }

  @override
  void update(void Function(GLoginData_signIn_user_cellphoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginData_signIn_user_cellphone build() {
    final _$result = _$v ??
        new _$GLoginData_signIn_user_cellphone._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GLoginData_signIn_user_cellphone', 'G__typename'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'GLoginData_signIn_user_cellphone', 'number'),
            lada: BuiltValueNullFieldError.checkNotNull(
                lada, 'GLoginData_signIn_user_cellphone', 'lada'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
