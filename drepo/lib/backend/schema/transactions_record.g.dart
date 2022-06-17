// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.transactionId;
    if (value != null) {
      result
        ..add('transaction_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionAmount;
    if (value != null) {
      result
        ..add('transaction_amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.transactionCategory;
    if (value != null) {
      result
        ..add('transaction_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionOrder;
    if (value != null) {
      result
        ..add('transaction_order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('referral_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionComplete;
    if (value != null) {
      result
        ..add('transaction_complete')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.transactionTime;
    if (value != null) {
      result
        ..add('transaction_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.transactionUser;
    if (value != null) {
      result
        ..add('transaction_user')
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
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'transaction_id':
          result.transactionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction_amount':
          result.transactionAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'transaction_category':
          result.transactionCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction_order':
          result.transactionOrder = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'referral_code':
          result.referralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction_complete':
          result.transactionComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'transaction_time':
          result.transactionTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'transaction_user':
          result.transactionUser = serializers.deserialize(value,
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

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final String transactionId;
  @override
  final int transactionAmount;
  @override
  final String transactionCategory;
  @override
  final DocumentReference<Object> transactionOrder;
  @override
  final String referralCode;
  @override
  final bool transactionComplete;
  @override
  final DateTime transactionTime;
  @override
  final DocumentReference<Object> transactionUser;
  @override
  final DocumentReference<Object> reference;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =>
      (new TransactionsRecordBuilder()..update(updates)).build();

  _$TransactionsRecord._(
      {this.transactionId,
      this.transactionAmount,
      this.transactionCategory,
      this.transactionOrder,
      this.referralCode,
      this.transactionComplete,
      this.transactionTime,
      this.transactionUser,
      this.reference})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        transactionId == other.transactionId &&
        transactionAmount == other.transactionAmount &&
        transactionCategory == other.transactionCategory &&
        transactionOrder == other.transactionOrder &&
        referralCode == other.referralCode &&
        transactionComplete == other.transactionComplete &&
        transactionTime == other.transactionTime &&
        transactionUser == other.transactionUser &&
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
                                $jc($jc(0, transactionId.hashCode),
                                    transactionAmount.hashCode),
                                transactionCategory.hashCode),
                            transactionOrder.hashCode),
                        referralCode.hashCode),
                    transactionComplete.hashCode),
                transactionTime.hashCode),
            transactionUser.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionsRecord')
          ..add('transactionId', transactionId)
          ..add('transactionAmount', transactionAmount)
          ..add('transactionCategory', transactionCategory)
          ..add('transactionOrder', transactionOrder)
          ..add('referralCode', referralCode)
          ..add('transactionComplete', transactionComplete)
          ..add('transactionTime', transactionTime)
          ..add('transactionUser', transactionUser)
          ..add('reference', reference))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord _$v;

  String _transactionId;
  String get transactionId => _$this._transactionId;
  set transactionId(String transactionId) =>
      _$this._transactionId = transactionId;

  int _transactionAmount;
  int get transactionAmount => _$this._transactionAmount;
  set transactionAmount(int transactionAmount) =>
      _$this._transactionAmount = transactionAmount;

  String _transactionCategory;
  String get transactionCategory => _$this._transactionCategory;
  set transactionCategory(String transactionCategory) =>
      _$this._transactionCategory = transactionCategory;

  DocumentReference<Object> _transactionOrder;
  DocumentReference<Object> get transactionOrder => _$this._transactionOrder;
  set transactionOrder(DocumentReference<Object> transactionOrder) =>
      _$this._transactionOrder = transactionOrder;

  String _referralCode;
  String get referralCode => _$this._referralCode;
  set referralCode(String referralCode) => _$this._referralCode = referralCode;

  bool _transactionComplete;
  bool get transactionComplete => _$this._transactionComplete;
  set transactionComplete(bool transactionComplete) =>
      _$this._transactionComplete = transactionComplete;

  DateTime _transactionTime;
  DateTime get transactionTime => _$this._transactionTime;
  set transactionTime(DateTime transactionTime) =>
      _$this._transactionTime = transactionTime;

  DocumentReference<Object> _transactionUser;
  DocumentReference<Object> get transactionUser => _$this._transactionUser;
  set transactionUser(DocumentReference<Object> transactionUser) =>
      _$this._transactionUser = transactionUser;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _transactionAmount = $v.transactionAmount;
      _transactionCategory = $v.transactionCategory;
      _transactionOrder = $v.transactionOrder;
      _referralCode = $v.referralCode;
      _transactionComplete = $v.transactionComplete;
      _transactionTime = $v.transactionTime;
      _transactionUser = $v.transactionUser;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionsRecord build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            transactionId: transactionId,
            transactionAmount: transactionAmount,
            transactionCategory: transactionCategory,
            transactionOrder: transactionOrder,
            referralCode: referralCode,
            transactionComplete: transactionComplete,
            transactionTime: transactionTime,
            transactionUser: transactionUser,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
