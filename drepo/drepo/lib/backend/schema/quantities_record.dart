import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quantities_record.g.dart';

abstract class QuantitiesRecord
    implements Built<QuantitiesRecord, QuantitiesRecordBuilder> {
  static Serializer<QuantitiesRecord> get serializer =>
      _$quantitiesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'quantity_no')
  int get quantityNo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(QuantitiesRecordBuilder builder) =>
      builder..quantityNo = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('quantities')
          : FirebaseFirestore.instance.collectionGroup('quantities');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('quantities').doc();

  static Stream<QuantitiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<QuantitiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  QuantitiesRecord._();
  factory QuantitiesRecord([void Function(QuantitiesRecordBuilder) updates]) =
      _$QuantitiesRecord;

  static QuantitiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createQuantitiesRecordData({
  int quantityNo,
}) =>
    serializers.toFirestore(QuantitiesRecord.serializer,
        QuantitiesRecord((q) => q..quantityNo = quantityNo));
