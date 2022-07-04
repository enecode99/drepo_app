// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuantitiesRecord> _$quantitiesRecordSerializer =
    new _$QuantitiesRecordSerializer();

class _$QuantitiesRecordSerializer
    implements StructuredSerializer<QuantitiesRecord> {
  @override
  final Iterable<Type> types = const [QuantitiesRecord, _$QuantitiesRecord];
  @override
  final String wireName = 'QuantitiesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, QuantitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.quantityNo;
    if (value != null) {
      result
        ..add('quantity_no')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  QuantitiesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuantitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'quantity_no':
          result.quantityNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$QuantitiesRecord extends QuantitiesRecord {
  @override
  final int quantityNo;
  @override
  final DocumentReference<Object> reference;

  factory _$QuantitiesRecord(
          [void Function(QuantitiesRecordBuilder) updates]) =>
      (new QuantitiesRecordBuilder()..update(updates)).build();

  _$QuantitiesRecord._({this.quantityNo, this.reference}) : super._();

  @override
  QuantitiesRecord rebuild(void Function(QuantitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuantitiesRecordBuilder toBuilder() =>
      new QuantitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuantitiesRecord &&
        quantityNo == other.quantityNo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, quantityNo.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuantitiesRecord')
          ..add('quantityNo', quantityNo)
          ..add('reference', reference))
        .toString();
  }
}

class QuantitiesRecordBuilder
    implements Builder<QuantitiesRecord, QuantitiesRecordBuilder> {
  _$QuantitiesRecord _$v;

  int _quantityNo;
  int get quantityNo => _$this._quantityNo;
  set quantityNo(int quantityNo) => _$this._quantityNo = quantityNo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  QuantitiesRecordBuilder() {
    QuantitiesRecord._initializeBuilder(this);
  }

  QuantitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quantityNo = $v.quantityNo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuantitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuantitiesRecord;
  }

  @override
  void update(void Function(QuantitiesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuantitiesRecord build() {
    final _$result = _$v ??
        new _$QuantitiesRecord._(quantityNo: quantityNo, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
