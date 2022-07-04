// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartRecord> _$cartRecordSerializer = new _$CartRecordSerializer();

class _$CartRecordSerializer implements StructuredSerializer<CartRecord> {
  @override
  final Iterable<Type> types = const [CartRecord, _$CartRecord];
  @override
  final String wireName = 'CartRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.cartUser;
    if (value != null) {
      result
        ..add('cart_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.cartSum;
    if (value != null) {
      result
        ..add('cart_sum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartPost;
    if (value != null) {
      result
        ..add('cart_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.cartRoll;
    if (value != null) {
      result
        ..add('cart_roll')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.cartQuantity;
    if (value != null) {
      result
        ..add('cart_quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartImage;
    if (value != null) {
      result
        ..add('cart_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cartPrice;
    if (value != null) {
      result
        ..add('cart_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartDetails;
    if (value != null) {
      result
        ..add('cart_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CartRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'cart_user':
          result.cartUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'cart_sum':
          result.cartSum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cart_post':
          result.cartPost = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'cart_roll':
          result.cartRoll = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'cart_quantity':
          result.cartQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cart_image':
          result.cartImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cart_price':
          result.cartPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cart_details':
          result.cartDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$CartRecord extends CartRecord {
  @override
  final DocumentReference<Object> cartUser;
  @override
  final int cartSum;
  @override
  final DocumentReference<Object> cartPost;
  @override
  final DocumentReference<Object> cartRoll;
  @override
  final int cartQuantity;
  @override
  final String cartImage;
  @override
  final int cartPrice;
  @override
  final String cartDetails;
  @override
  final DocumentReference<Object> reference;

  factory _$CartRecord([void Function(CartRecordBuilder) updates]) =>
      (new CartRecordBuilder()..update(updates)).build();

  _$CartRecord._(
      {this.cartUser,
      this.cartSum,
      this.cartPost,
      this.cartRoll,
      this.cartQuantity,
      this.cartImage,
      this.cartPrice,
      this.cartDetails,
      this.reference})
      : super._();

  @override
  CartRecord rebuild(void Function(CartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartRecordBuilder toBuilder() => new CartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartRecord &&
        cartUser == other.cartUser &&
        cartSum == other.cartSum &&
        cartPost == other.cartPost &&
        cartRoll == other.cartRoll &&
        cartQuantity == other.cartQuantity &&
        cartImage == other.cartImage &&
        cartPrice == other.cartPrice &&
        cartDetails == other.cartDetails &&
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
                                $jc($jc(0, cartUser.hashCode),
                                    cartSum.hashCode),
                                cartPost.hashCode),
                            cartRoll.hashCode),
                        cartQuantity.hashCode),
                    cartImage.hashCode),
                cartPrice.hashCode),
            cartDetails.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartRecord')
          ..add('cartUser', cartUser)
          ..add('cartSum', cartSum)
          ..add('cartPost', cartPost)
          ..add('cartRoll', cartRoll)
          ..add('cartQuantity', cartQuantity)
          ..add('cartImage', cartImage)
          ..add('cartPrice', cartPrice)
          ..add('cartDetails', cartDetails)
          ..add('reference', reference))
        .toString();
  }
}

class CartRecordBuilder implements Builder<CartRecord, CartRecordBuilder> {
  _$CartRecord _$v;

  DocumentReference<Object> _cartUser;
  DocumentReference<Object> get cartUser => _$this._cartUser;
  set cartUser(DocumentReference<Object> cartUser) =>
      _$this._cartUser = cartUser;

  int _cartSum;
  int get cartSum => _$this._cartSum;
  set cartSum(int cartSum) => _$this._cartSum = cartSum;

  DocumentReference<Object> _cartPost;
  DocumentReference<Object> get cartPost => _$this._cartPost;
  set cartPost(DocumentReference<Object> cartPost) =>
      _$this._cartPost = cartPost;

  DocumentReference<Object> _cartRoll;
  DocumentReference<Object> get cartRoll => _$this._cartRoll;
  set cartRoll(DocumentReference<Object> cartRoll) =>
      _$this._cartRoll = cartRoll;

  int _cartQuantity;
  int get cartQuantity => _$this._cartQuantity;
  set cartQuantity(int cartQuantity) => _$this._cartQuantity = cartQuantity;

  String _cartImage;
  String get cartImage => _$this._cartImage;
  set cartImage(String cartImage) => _$this._cartImage = cartImage;

  int _cartPrice;
  int get cartPrice => _$this._cartPrice;
  set cartPrice(int cartPrice) => _$this._cartPrice = cartPrice;

  String _cartDetails;
  String get cartDetails => _$this._cartDetails;
  set cartDetails(String cartDetails) => _$this._cartDetails = cartDetails;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CartRecordBuilder() {
    CartRecord._initializeBuilder(this);
  }

  CartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartUser = $v.cartUser;
      _cartSum = $v.cartSum;
      _cartPost = $v.cartPost;
      _cartRoll = $v.cartRoll;
      _cartQuantity = $v.cartQuantity;
      _cartImage = $v.cartImage;
      _cartPrice = $v.cartPrice;
      _cartDetails = $v.cartDetails;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartRecord;
  }

  @override
  void update(void Function(CartRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartRecord build() {
    final _$result = _$v ??
        new _$CartRecord._(
            cartUser: cartUser,
            cartSum: cartSum,
            cartPost: cartPost,
            cartRoll: cartRoll,
            cartQuantity: cartQuantity,
            cartImage: cartImage,
            cartPrice: cartPrice,
            cartDetails: cartDetails,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
