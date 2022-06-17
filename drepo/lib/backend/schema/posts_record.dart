import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'post_content')
  String get postContent;

  @nullable
  @BuiltValueField(wireName: 'post_time')
  DateTime get postTime;

  @nullable
  @BuiltValueField(wireName: 'post_price')
  int get postPrice;

  @nullable
  @BuiltValueField(wireName: 'user_post')
  DocumentReference get userPost;

  @nullable
  @BuiltValueField(wireName: 'post_category')
  String get postCategory;

  @nullable
  @BuiltValueField(wireName: 'user_favorite')
  BuiltList<DocumentReference> get userFavorite;

  @nullable
  @BuiltValueField(wireName: 'user_cart')
  BuiltList<DocumentReference> get userCart;

  @nullable
  @BuiltValueField(wireName: 'post_images')
  BuiltList<String> get postImages;

  @nullable
  @BuiltValueField(wireName: 'product_details')
  String get productDetails;

  @nullable
  String get postID;

  @nullable
  @BuiltValueField(wireName: 'post_quantity')
  int get postQuantity;

  @nullable
  @BuiltValueField(wireName: 'cart_Total')
  int get cartTotal;

  @nullable
  @BuiltValueField(wireName: 'post_order')
  DocumentReference get postOrder;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..postContent = ''
    ..postPrice = 0
    ..postCategory = ''
    ..userFavorite = ListBuilder()
    ..userCart = ListBuilder()
    ..postImages = ListBuilder()
    ..productDetails = ''
    ..postID = ''
    ..postQuantity = 0
    ..cartTotal = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPostsRecordData({
  String postContent,
  DateTime postTime,
  int postPrice,
  DocumentReference userPost,
  String postCategory,
  String productDetails,
  String postID,
  int postQuantity,
  int cartTotal,
  DocumentReference postOrder,
}) =>
    serializers.toFirestore(
        PostsRecord.serializer,
        PostsRecord((p) => p
          ..postContent = postContent
          ..postTime = postTime
          ..postPrice = postPrice
          ..userPost = userPost
          ..postCategory = postCategory
          ..userFavorite = null
          ..userCart = null
          ..postImages = null
          ..productDetails = productDetails
          ..postID = postID
          ..postQuantity = postQuantity
          ..cartTotal = cartTotal
          ..postOrder = postOrder));
