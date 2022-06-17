import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'order_amount')
  int get orderAmount;

  @nullable
  @BuiltValueField(wireName: 'order_paid')
  int get orderPaid;

  @nullable
  @BuiltValueField(wireName: 'order_transactions')
  BuiltList<DocumentReference> get orderTransactions;

  @nullable
  @BuiltValueField(wireName: 'order_time')
  DateTime get orderTime;

  @nullable
  @BuiltValueField(wireName: 'order_users')
  BuiltList<DocumentReference> get orderUsers;

  @nullable
  @BuiltValueField(wireName: 'derivery_details')
  String get deriveryDetails;

  @nullable
  @BuiltValueField(wireName: 'order_months')
  String get orderMonths;

  @nullable
  @BuiltValueField(wireName: 'order_roll')
  DocumentReference get orderRoll;

  @nullable
  @BuiltValueField(wireName: 'order_post')
  DocumentReference get orderPost;

  @nullable
  String get referral;

  @nullable
  @BuiltValueField(wireName: 'is_order_roll')
  bool get isOrderRoll;

  @nullable
  @BuiltValueField(wireName: 'order_seller')
  DocumentReference get orderSeller;

  @nullable
  @BuiltValueField(wireName: 'is_installment')
  bool get isInstallment;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..orderAmount = 0
    ..orderPaid = 0
    ..orderTransactions = ListBuilder()
    ..orderUsers = ListBuilder()
    ..deriveryDetails = ''
    ..orderMonths = ''
    ..referral = ''
    ..isOrderRoll = false
    ..isInstallment = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdersRecordData({
  int orderAmount,
  int orderPaid,
  DateTime orderTime,
  String deriveryDetails,
  String orderMonths,
  DocumentReference orderRoll,
  DocumentReference orderPost,
  String referral,
  bool isOrderRoll,
  DocumentReference orderSeller,
  bool isInstallment,
}) =>
    serializers.toFirestore(
        OrdersRecord.serializer,
        OrdersRecord((o) => o
          ..orderAmount = orderAmount
          ..orderPaid = orderPaid
          ..orderTransactions = null
          ..orderTime = orderTime
          ..orderUsers = null
          ..deriveryDetails = deriveryDetails
          ..orderMonths = orderMonths
          ..orderRoll = orderRoll
          ..orderPost = orderPost
          ..referral = referral
          ..isOrderRoll = isOrderRoll
          ..orderSeller = orderSeller
          ..isInstallment = isInstallment));
