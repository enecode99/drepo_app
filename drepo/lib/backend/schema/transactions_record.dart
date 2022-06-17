import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'transaction_id')
  String get transactionId;

  @nullable
  @BuiltValueField(wireName: 'transaction_amount')
  int get transactionAmount;

  @nullable
  @BuiltValueField(wireName: 'transaction_category')
  String get transactionCategory;

  @nullable
  @BuiltValueField(wireName: 'transaction_order')
  DocumentReference get transactionOrder;

  @nullable
  @BuiltValueField(wireName: 'referral_code')
  String get referralCode;

  @nullable
  @BuiltValueField(wireName: 'transaction_complete')
  bool get transactionComplete;

  @nullable
  @BuiltValueField(wireName: 'transaction_time')
  DateTime get transactionTime;

  @nullable
  @BuiltValueField(wireName: 'transaction_user')
  DocumentReference get transactionUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..transactionId = ''
    ..transactionAmount = 0
    ..transactionCategory = ''
    ..referralCode = ''
    ..transactionComplete = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionsRecordData({
  String transactionId,
  int transactionAmount,
  String transactionCategory,
  DocumentReference transactionOrder,
  String referralCode,
  bool transactionComplete,
  DateTime transactionTime,
  DocumentReference transactionUser,
}) =>
    serializers.toFirestore(
        TransactionsRecord.serializer,
        TransactionsRecord((t) => t
          ..transactionId = transactionId
          ..transactionAmount = transactionAmount
          ..transactionCategory = transactionCategory
          ..transactionOrder = transactionOrder
          ..referralCode = referralCode
          ..transactionComplete = transactionComplete
          ..transactionTime = transactionTime
          ..transactionUser = transactionUser));
