// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rolls_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RollsRecord> _$rollsRecordSerializer = new _$RollsRecordSerializer();

class _$RollsRecordSerializer implements StructuredSerializer<RollsRecord> {
  @override
  final Iterable<Type> types = const [RollsRecord, _$RollsRecord];
  @override
  final String wireName = 'RollsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RollsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.rollName;
    if (value != null) {
      result
        ..add('roll_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rollTime;
    if (value != null) {
      result
        ..add('roll_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rollUser;
    if (value != null) {
      result
        ..add('roll_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.rollCaption;
    if (value != null) {
      result
        ..add('roll_caption')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rollPrice;
    if (value != null) {
      result
        ..add('roll_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rollImages;
    if (value != null) {
      result
        ..add('roll_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.rollDetails;
    if (value != null) {
      result
        ..add('roll_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userFavorite;
    if (value != null) {
      result
        ..add('user_favorite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.userCart;
    if (value != null) {
      result
        ..add('user_cart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.rollID;
    if (value != null) {
      result
        ..add('rollID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rollLive;
    if (value != null) {
      result
        ..add('roll_live')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cartQuantity;
    if (value != null) {
      result
        ..add('cart_quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartTotal;
    if (value != null) {
      result
        ..add('cart_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rollOrder;
    if (value != null) {
      result
        ..add('roll_order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  RollsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RollsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'roll_name':
          result.rollName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roll_time':
          result.rollTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'roll_user':
          result.rollUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'roll_caption':
          result.rollCaption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roll_price':
          result.rollPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'roll_images':
          result.rollImages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'roll_details':
          result.rollDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_favorite':
          result.userFavorite.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'user_cart':
          result.userCart.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'rollID':
          result.rollID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roll_live':
          result.rollLive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cart_quantity':
          result.cartQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cart_total':
          result.cartTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'roll_order':
          result.rollOrder = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$RollsRecord extends RollsRecord {
  @override
  final String rollName;
  @override
  final DateTime rollTime;
  @override
  final DocumentReference<Object> rollUser;
  @override
  final String rollCaption;
  @override
  final int rollPrice;
  @override
  final BuiltList<String> rollImages;
  @override
  final String rollDetails;
  @override
  final BuiltList<DocumentReference<Object>> userFavorite;
  @override
  final BuiltList<DocumentReference<Object>> userCart;
  @override
  final String rollID;
  @override
  final bool rollLive;
  @override
  final int cartQuantity;
  @override
  final int cartTotal;
  @override
  final DocumentReference<Object> rollOrder;
  @override
  final DocumentReference<Object> reference;

  factory _$RollsRecord([void Function(RollsRecordBuilder) updates]) =>
      (new RollsRecordBuilder()..update(updates)).build();

  _$RollsRecord._(
      {this.rollName,
      this.rollTime,
      this.rollUser,
      this.rollCaption,
      this.rollPrice,
      this.rollImages,
      this.rollDetails,
      this.userFavorite,
      this.userCart,
      this.rollID,
      this.rollLive,
      this.cartQuantity,
      this.cartTotal,
      this.rollOrder,
      this.reference})
      : super._();

  @override
  RollsRecord rebuild(void Function(RollsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RollsRecordBuilder toBuilder() => new RollsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RollsRecord &&
        rollName == other.rollName &&
        rollTime == other.rollTime &&
        rollUser == other.rollUser &&
        rollCaption == other.rollCaption &&
        rollPrice == other.rollPrice &&
        rollImages == other.rollImages &&
        rollDetails == other.rollDetails &&
        userFavorite == other.userFavorite &&
        userCart == other.userCart &&
        rollID == other.rollID &&
        rollLive == other.rollLive &&
        cartQuantity == other.cartQuantity &&
        cartTotal == other.cartTotal &&
        rollOrder == other.rollOrder &&
        reference == other.reference;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                rollName
                                                                    .hashCode),
                                                            rollTime.hashCode),
                                                        rollUser.hashCode),
                                                    rollCaption.hashCode),
                                                rollPrice.hashCode),
                                            rollImages.hashCode),
                                        rollDetails.hashCode),
                                    userFavorite.hashCode),
                                userCart.hashCode),
                            rollID.hashCode),
                        rollLive.hashCode),
                    cartQuantity.hashCode),
                cartTotal.hashCode),
            rollOrder.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RollsRecord')
          ..add('rollName', rollName)
          ..add('rollTime', rollTime)
          ..add('rollUser', rollUser)
          ..add('rollCaption', rollCaption)
          ..add('rollPrice', rollPrice)
          ..add('rollImages', rollImages)
          ..add('rollDetails', rollDetails)
          ..add('userFavorite', userFavorite)
          ..add('userCart', userCart)
          ..add('rollID', rollID)
          ..add('rollLive', rollLive)
          ..add('cartQuantity', cartQuantity)
          ..add('cartTotal', cartTotal)
          ..add('rollOrder', rollOrder)
          ..add('reference', reference))
        .toString();
  }
}

class RollsRecordBuilder implements Builder<RollsRecord, RollsRecordBuilder> {
  _$RollsRecord _$v;

  String _rollName;
  String get rollName => _$this._rollName;
  set rollName(String rollName) => _$this._rollName = rollName;

  DateTime _rollTime;
  DateTime get rollTime => _$this._rollTime;
  set rollTime(DateTime rollTime) => _$this._rollTime = rollTime;

  DocumentReference<Object> _rollUser;
  DocumentReference<Object> get rollUser => _$this._rollUser;
  set rollUser(DocumentReference<Object> rollUser) =>
      _$this._rollUser = rollUser;

  String _rollCaption;
  String get rollCaption => _$this._rollCaption;
  set rollCaption(String rollCaption) => _$this._rollCaption = rollCaption;

  int _rollPrice;
  int get rollPrice => _$this._rollPrice;
  set rollPrice(int rollPrice) => _$this._rollPrice = rollPrice;

  ListBuilder<String> _rollImages;
  ListBuilder<String> get rollImages =>
      _$this._rollImages ??= new ListBuilder<String>();
  set rollImages(ListBuilder<String> rollImages) =>
      _$this._rollImages = rollImages;

  String _rollDetails;
  String get rollDetails => _$this._rollDetails;
  set rollDetails(String rollDetails) => _$this._rollDetails = rollDetails;

  ListBuilder<DocumentReference<Object>> _userFavorite;
  ListBuilder<DocumentReference<Object>> get userFavorite =>
      _$this._userFavorite ??= new ListBuilder<DocumentReference<Object>>();
  set userFavorite(ListBuilder<DocumentReference<Object>> userFavorite) =>
      _$this._userFavorite = userFavorite;

  ListBuilder<DocumentReference<Object>> _userCart;
  ListBuilder<DocumentReference<Object>> get userCart =>
      _$this._userCart ??= new ListBuilder<DocumentReference<Object>>();
  set userCart(ListBuilder<DocumentReference<Object>> userCart) =>
      _$this._userCart = userCart;

  String _rollID;
  String get rollID => _$this._rollID;
  set rollID(String rollID) => _$this._rollID = rollID;

  bool _rollLive;
  bool get rollLive => _$this._rollLive;
  set rollLive(bool rollLive) => _$this._rollLive = rollLive;

  int _cartQuantity;
  int get cartQuantity => _$this._cartQuantity;
  set cartQuantity(int cartQuantity) => _$this._cartQuantity = cartQuantity;

  int _cartTotal;
  int get cartTotal => _$this._cartTotal;
  set cartTotal(int cartTotal) => _$this._cartTotal = cartTotal;

  DocumentReference<Object> _rollOrder;
  DocumentReference<Object> get rollOrder => _$this._rollOrder;
  set rollOrder(DocumentReference<Object> rollOrder) =>
      _$this._rollOrder = rollOrder;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RollsRecordBuilder() {
    RollsRecord._initializeBuilder(this);
  }

  RollsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rollName = $v.rollName;
      _rollTime = $v.rollTime;
      _rollUser = $v.rollUser;
      _rollCaption = $v.rollCaption;
      _rollPrice = $v.rollPrice;
      _rollImages = $v.rollImages?.toBuilder();
      _rollDetails = $v.rollDetails;
      _userFavorite = $v.userFavorite?.toBuilder();
      _userCart = $v.userCart?.toBuilder();
      _rollID = $v.rollID;
      _rollLive = $v.rollLive;
      _cartQuantity = $v.cartQuantity;
      _cartTotal = $v.cartTotal;
      _rollOrder = $v.rollOrder;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RollsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RollsRecord;
  }

  @override
  void update(void Function(RollsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RollsRecord build() {
    _$RollsRecord _$result;
    try {
      _$result = _$v ??
          new _$RollsRecord._(
              rollName: rollName,
              rollTime: rollTime,
              rollUser: rollUser,
              rollCaption: rollCaption,
              rollPrice: rollPrice,
              rollImages: _rollImages?.build(),
              rollDetails: rollDetails,
              userFavorite: _userFavorite?.build(),
              userCart: _userCart?.build(),
              rollID: rollID,
              rollLive: rollLive,
              cartQuantity: cartQuantity,
              cartTotal: cartTotal,
              rollOrder: rollOrder,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'rollImages';
        _rollImages?.build();

        _$failedField = 'userFavorite';
        _userFavorite?.build();
        _$failedField = 'userCart';
        _userCart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RollsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
