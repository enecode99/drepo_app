import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rolls_record.g.dart';

abstract class RollsRecord implements Built<RollsRecord, RollsRecordBuilder> {
  static Serializer<RollsRecord> get serializer => _$rollsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'roll_name')
  String get rollName;

  @nullable
  @BuiltValueField(wireName: 'roll_time')
  DateTime get rollTime;

  @nullable
  @BuiltValueField(wireName: 'roll_user')
  DocumentReference get rollUser;

  @nullable
  @BuiltValueField(wireName: 'roll_caption')
  String get rollCaption;

  @nullable
  @BuiltValueField(wireName: 'roll_price')
  int get rollPrice;

  @nullable
  @BuiltValueField(wireName: 'roll_images')
  BuiltList<String> get rollImages;

  @nullable
  @BuiltValueField(wireName: 'roll_details')
  String get rollDetails;

  @nullable
  @BuiltValueField(wireName: 'user_favorite')
  BuiltList<DocumentReference> get userFavorite;

  @nullable
  @BuiltValueField(wireName: 'user_cart')
  BuiltList<DocumentReference> get userCart;

  @nullable
  String get rollID;

  @nullable
  @BuiltValueField(wireName: 'roll_live')
  bool get rollLive;

  @nullable
  @BuiltValueField(wireName: 'cart_quantity')
  int get cartQuantity;

  @nullable
  @BuiltValueField(wireName: 'cart_total')
  int get cartTotal;

  @nullable
  @BuiltValueField(wireName: 'roll_order')
  DocumentReference get rollOrder;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RollsRecordBuilder builder) => builder
    ..rollName = ''
    ..rollCaption = ''
    ..rollPrice = 0
    ..rollImages = ListBuilder()
    ..rollDetails = ''
    ..userFavorite = ListBuilder()
    ..userCart = ListBuilder()
    ..rollID = ''
    ..rollLive = false
    ..cartQuantity = 0
    ..cartTotal = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rolls');

  static Stream<RollsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RollsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RollsRecord._();
  factory RollsRecord([void Function(RollsRecordBuilder) updates]) =
      _$RollsRecord;

  static RollsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRollsRecordData({
  String rollName,
  DateTime rollTime,
  DocumentReference rollUser,
  String rollCaption,
  int rollPrice,
  String rollDetails,
  String rollID,
  bool rollLive,
  int cartQuantity,
  int cartTotal,
  DocumentReference rollOrder,
}) =>
    serializers.toFirestore(
        RollsRecord.serializer,
        RollsRecord((r) => r
          ..rollName = rollName
          ..rollTime = rollTime
          ..rollUser = rollUser
          ..rollCaption = rollCaption
          ..rollPrice = rollPrice
          ..rollImages = null
          ..rollDetails = rollDetails
          ..userFavorite = null
          ..userCart = null
          ..rollID = rollID
          ..rollLive = rollLive
          ..cartQuantity = cartQuantity
          ..cartTotal = cartTotal
          ..rollOrder = rollOrder));
