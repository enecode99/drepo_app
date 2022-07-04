import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_record.g.dart';

abstract class CartRecord implements Built<CartRecord, CartRecordBuilder> {
  static Serializer<CartRecord> get serializer => _$cartRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'cart_user')
  DocumentReference get cartUser;

  @nullable
  @BuiltValueField(wireName: 'cart_sum')
  int get cartSum;

  @nullable
  @BuiltValueField(wireName: 'cart_post')
  DocumentReference get cartPost;

  @nullable
  @BuiltValueField(wireName: 'cart_roll')
  DocumentReference get cartRoll;

  @nullable
  @BuiltValueField(wireName: 'cart_quantity')
  int get cartQuantity;

  @nullable
  @BuiltValueField(wireName: 'cart_image')
  String get cartImage;

  @nullable
  @BuiltValueField(wireName: 'cart_price')
  int get cartPrice;

  @nullable
  @BuiltValueField(wireName: 'cart_details')
  String get cartDetails;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CartRecordBuilder builder) => builder
    ..cartSum = 0
    ..cartQuantity = 0
    ..cartImage = ''
    ..cartPrice = 0
    ..cartDetails = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CartRecord._();
  factory CartRecord([void Function(CartRecordBuilder) updates]) = _$CartRecord;

  static CartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCartRecordData({
  DocumentReference cartUser,
  int cartSum,
  DocumentReference cartPost,
  DocumentReference cartRoll,
  int cartQuantity,
  String cartImage,
  int cartPrice,
  String cartDetails,
}) =>
    serializers.toFirestore(
        CartRecord.serializer,
        CartRecord((c) => c
          ..cartUser = cartUser
          ..cartSum = cartSum
          ..cartPost = cartPost
          ..cartRoll = cartRoll
          ..cartQuantity = cartQuantity
          ..cartImage = cartImage
          ..cartPrice = cartPrice
          ..cartDetails = cartDetails));
