// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.orderAmount;
    if (value != null) {
      result
        ..add('order_amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orderPaid;
    if (value != null) {
      result
        ..add('order_paid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orderTransactions;
    if (value != null) {
      result
        ..add('order_transactions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.orderTime;
    if (value != null) {
      result
        ..add('order_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderUsers;
    if (value != null) {
      result
        ..add('order_users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.deriveryDetails;
    if (value != null) {
      result
        ..add('derivery_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderMonths;
    if (value != null) {
      result
        ..add('order_months')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderRoll;
    if (value != null) {
      result
        ..add('order_roll')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.orderPost;
    if (value != null) {
      result
        ..add('order_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.referral;
    if (value != null) {
      result
        ..add('referral')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isOrderRoll;
    if (value != null) {
      result
        ..add('is_order_roll')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orderSeller;
    if (value != null) {
      result
        ..add('order_seller')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.isInstallment;
    if (value != null) {
      result
        ..add('is_installment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  OrdersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'order_amount':
          result.orderAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'order_paid':
          result.orderPaid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'order_transactions':
          result.orderTransactions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'order_time':
          result.orderTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'order_users':
          result.orderUsers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'derivery_details':
          result.deriveryDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_months':
          result.orderMonths = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_roll':
          result.orderRoll = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'order_post':
          result.orderPost = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'referral':
          result.referral = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_order_roll':
          result.isOrderRoll = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'order_seller':
          result.orderSeller = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'is_installment':
          result.isInstallment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$OrdersRecord extends OrdersRecord {
  @override
  final int orderAmount;
  @override
  final int orderPaid;
  @override
  final BuiltList<DocumentReference<Object>> orderTransactions;
  @override
  final DateTime orderTime;
  @override
  final BuiltList<DocumentReference<Object>> orderUsers;
  @override
  final String deriveryDetails;
  @override
  final String orderMonths;
  @override
  final DocumentReference<Object> orderRoll;
  @override
  final DocumentReference<Object> orderPost;
  @override
  final String referral;
  @override
  final bool isOrderRoll;
  @override
  final DocumentReference<Object> orderSeller;
  @override
  final bool isInstallment;
  @override
  final DocumentReference<Object> reference;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder) updates]) =>
      (new OrdersRecordBuilder()..update(updates)).build();

  _$OrdersRecord._(
      {this.orderAmount,
      this.orderPaid,
      this.orderTransactions,
      this.orderTime,
      this.orderUsers,
      this.deriveryDetails,
      this.orderMonths,
      this.orderRoll,
      this.orderPost,
      this.referral,
      this.isOrderRoll,
      this.orderSeller,
      this.isInstallment,
      this.reference})
      : super._();

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        orderAmount == other.orderAmount &&
        orderPaid == other.orderPaid &&
        orderTransactions == other.orderTransactions &&
        orderTime == other.orderTime &&
        orderUsers == other.orderUsers &&
        deriveryDetails == other.deriveryDetails &&
        orderMonths == other.orderMonths &&
        orderRoll == other.orderRoll &&
        orderPost == other.orderPost &&
        referral == other.referral &&
        isOrderRoll == other.isOrderRoll &&
        orderSeller == other.orderSeller &&
        isInstallment == other.isInstallment &&
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
                                                            0,
                                                            orderAmount
                                                                .hashCode),
                                                        orderPaid.hashCode),
                                                    orderTransactions.hashCode),
                                                orderTime.hashCode),
                                            orderUsers.hashCode),
                                        deriveryDetails.hashCode),
                                    orderMonths.hashCode),
                                orderRoll.hashCode),
                            orderPost.hashCode),
                        referral.hashCode),
                    isOrderRoll.hashCode),
                orderSeller.hashCode),
            isInstallment.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrdersRecord')
          ..add('orderAmount', orderAmount)
          ..add('orderPaid', orderPaid)
          ..add('orderTransactions', orderTransactions)
          ..add('orderTime', orderTime)
          ..add('orderUsers', orderUsers)
          ..add('deriveryDetails', deriveryDetails)
          ..add('orderMonths', orderMonths)
          ..add('orderRoll', orderRoll)
          ..add('orderPost', orderPost)
          ..add('referral', referral)
          ..add('isOrderRoll', isOrderRoll)
          ..add('orderSeller', orderSeller)
          ..add('isInstallment', isInstallment)
          ..add('reference', reference))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord _$v;

  int _orderAmount;
  int get orderAmount => _$this._orderAmount;
  set orderAmount(int orderAmount) => _$this._orderAmount = orderAmount;

  int _orderPaid;
  int get orderPaid => _$this._orderPaid;
  set orderPaid(int orderPaid) => _$this._orderPaid = orderPaid;

  ListBuilder<DocumentReference<Object>> _orderTransactions;
  ListBuilder<DocumentReference<Object>> get orderTransactions =>
      _$this._orderTransactions ??=
          new ListBuilder<DocumentReference<Object>>();
  set orderTransactions(
          ListBuilder<DocumentReference<Object>> orderTransactions) =>
      _$this._orderTransactions = orderTransactions;

  DateTime _orderTime;
  DateTime get orderTime => _$this._orderTime;
  set orderTime(DateTime orderTime) => _$this._orderTime = orderTime;

  ListBuilder<DocumentReference<Object>> _orderUsers;
  ListBuilder<DocumentReference<Object>> get orderUsers =>
      _$this._orderUsers ??= new ListBuilder<DocumentReference<Object>>();
  set orderUsers(ListBuilder<DocumentReference<Object>> orderUsers) =>
      _$this._orderUsers = orderUsers;

  String _deriveryDetails;
  String get deriveryDetails => _$this._deriveryDetails;
  set deriveryDetails(String deriveryDetails) =>
      _$this._deriveryDetails = deriveryDetails;

  String _orderMonths;
  String get orderMonths => _$this._orderMonths;
  set orderMonths(String orderMonths) => _$this._orderMonths = orderMonths;

  DocumentReference<Object> _orderRoll;
  DocumentReference<Object> get orderRoll => _$this._orderRoll;
  set orderRoll(DocumentReference<Object> orderRoll) =>
      _$this._orderRoll = orderRoll;

  DocumentReference<Object> _orderPost;
  DocumentReference<Object> get orderPost => _$this._orderPost;
  set orderPost(DocumentReference<Object> orderPost) =>
      _$this._orderPost = orderPost;

  String _referral;
  String get referral => _$this._referral;
  set referral(String referral) => _$this._referral = referral;

  bool _isOrderRoll;
  bool get isOrderRoll => _$this._isOrderRoll;
  set isOrderRoll(bool isOrderRoll) => _$this._isOrderRoll = isOrderRoll;

  DocumentReference<Object> _orderSeller;
  DocumentReference<Object> get orderSeller => _$this._orderSeller;
  set orderSeller(DocumentReference<Object> orderSeller) =>
      _$this._orderSeller = orderSeller;

  bool _isInstallment;
  bool get isInstallment => _$this._isInstallment;
  set isInstallment(bool isInstallment) =>
      _$this._isInstallment = isInstallment;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderAmount = $v.orderAmount;
      _orderPaid = $v.orderPaid;
      _orderTransactions = $v.orderTransactions?.toBuilder();
      _orderTime = $v.orderTime;
      _orderUsers = $v.orderUsers?.toBuilder();
      _deriveryDetails = $v.deriveryDetails;
      _orderMonths = $v.orderMonths;
      _orderRoll = $v.orderRoll;
      _orderPost = $v.orderPost;
      _referral = $v.referral;
      _isOrderRoll = $v.isOrderRoll;
      _orderSeller = $v.orderSeller;
      _isInstallment = $v.isInstallment;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrdersRecord build() {
    _$OrdersRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdersRecord._(
              orderAmount: orderAmount,
              orderPaid: orderPaid,
              orderTransactions: _orderTransactions?.build(),
              orderTime: orderTime,
              orderUsers: _orderUsers?.build(),
              deriveryDetails: deriveryDetails,
              orderMonths: orderMonths,
              orderRoll: orderRoll,
              orderPost: orderPost,
              referral: referral,
              isOrderRoll: isOrderRoll,
              orderSeller: orderSeller,
              isInstallment: isInstallment,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderTransactions';
        _orderTransactions?.build();

        _$failedField = 'orderUsers';
        _orderUsers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrdersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
