import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'referral_code_record.g.dart';

abstract class ReferralCodeRecord
    implements Built<ReferralCodeRecord, ReferralCodeRecordBuilder> {
  static Serializer<ReferralCodeRecord> get serializer =>
      _$referralCodeRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'request_user')
  DocumentReference get requestUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReferralCodeRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('referral_code');

  static Stream<ReferralCodeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReferralCodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReferralCodeRecord._();
  factory ReferralCodeRecord(
          [void Function(ReferralCodeRecordBuilder) updates]) =
      _$ReferralCodeRecord;

  static ReferralCodeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReferralCodeRecordData({
  DocumentReference requestUser,
}) =>
    serializers.toFirestore(ReferralCodeRecord.serializer,
        ReferralCodeRecord((r) => r..requestUser = requestUser));
