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
  @BuiltValueField(wireName: 'post_subcategory')
  String get postSubcategory;

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
    ..cartTotal = 0
    ..postSubcategory = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static PostsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => PostsRecord(
        (c) => c
          ..postContent = snapshot.data['post_content']
          ..postTime = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['post_time']))
          ..postPrice = snapshot.data['post_price']?.round()
          ..userPost = safeGet(() => toRef(snapshot.data['user_post']))
          ..postCategory = snapshot.data['post_category']
          ..userFavorite = safeGet(() =>
              ListBuilder(snapshot.data['user_favorite'].map((s) => toRef(s))))
          ..userCart = safeGet(() =>
              ListBuilder(snapshot.data['user_cart'].map((s) => toRef(s))))
          ..postImages =
              safeGet(() => ListBuilder(snapshot.data['post_images']))
          ..productDetails = snapshot.data['product_details']
          ..postID = snapshot.data['postID']
          ..postQuantity = snapshot.data['post_quantity']?.round()
          ..cartTotal = snapshot.data['cart_Total']?.round()
          ..postOrder = safeGet(() => toRef(snapshot.data['post_order']))
          ..postSubcategory = snapshot.data['post_subcategory']
          ..reference = PostsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PostsRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'posts',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

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
  String postSubcategory,
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
          ..postOrder = postOrder
          ..postSubcategory = postSubcategory));
