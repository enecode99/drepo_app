// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_code_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReferralCodeRecord> _$referralCodeRecordSerializer =
    new _$ReferralCodeRecordSerializer();

class _$ReferralCodeRecordSerializer
    implements StructuredSerializer<ReferralCodeRecord> {
  @override
  final Iterable<Type> types = const [ReferralCodeRecord, _$ReferralCodeRecord];
  @override
  final String wireName = 'ReferralCodeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ReferralCodeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.requestUser;
    if (value != null) {
      result
        ..add('request_user')
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
  ReferralCodeRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReferralCodeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'request_user':
          result.requestUser = serializers.deserialize(value,
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

class _$ReferralCodeRecord extends ReferralCodeRecord {
  @override
  final DocumentReference<Object> requestUser;
  @override
  final DocumentReference<Object> reference;

  factory _$ReferralCodeRecord(
          [void Function(ReferralCodeRecordBuilder) updates]) =>
      (new ReferralCodeRecordBuilder()..update(updates)).build();

  _$ReferralCodeRecord._({this.requestUser, this.reference}) : super._();

  @override
  ReferralCodeRecord rebuild(
          void Function(ReferralCodeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferralCodeRecordBuilder toBuilder() =>
      new ReferralCodeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferralCodeRecord &&
        requestUser == other.requestUser &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, requestUser.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReferralCodeRecord')
          ..add('requestUser', requestUser)
          ..add('reference', reference))
        .toString();
  }
}

class ReferralCodeRecordBuilder
    implements Builder<ReferralCodeRecord, ReferralCodeRecordBuilder> {
  _$ReferralCodeRecord _$v;

  DocumentReference<Object> _requestUser;
  DocumentReference<Object> get requestUser => _$this._requestUser;
  set requestUser(DocumentReference<Object> requestUser) =>
      _$this._requestUser = requestUser;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ReferralCodeRecordBuilder() {
    ReferralCodeRecord._initializeBuilder(this);
  }

  ReferralCodeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestUser = $v.requestUser;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferralCodeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReferralCodeRecord;
  }

  @override
  void update(void Function(ReferralCodeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReferralCodeRecord build() {
    final _$result = _$v ??
        new _$ReferralCodeRecord._(
            requestUser: requestUser, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
