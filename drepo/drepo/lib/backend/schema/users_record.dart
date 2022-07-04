import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get location;

  @nullable
  @BuiltValueField(wireName: 'facebood_link')
  String get faceboodLink;

  @nullable
  @BuiltValueField(wireName: 'Instagram_link')
  String get instagramLink;

  @nullable
  @BuiltValueField(wireName: 'user_rolls')
  BuiltList<DocumentReference> get userRolls;

  @nullable
  @BuiltValueField(wireName: 'user_posts')
  BuiltList<DocumentReference> get userPosts;

  @nullable
  @BuiltValueField(wireName: 'post_favorite')
  BuiltList<DocumentReference> get postFavorite;

  @nullable
  @BuiltValueField(wireName: 'post_cart')
  BuiltList<DocumentReference> get postCart;

  @nullable
  @BuiltValueField(wireName: 'user_chats')
  BuiltList<DocumentReference> get userChats;

  @nullable
  @BuiltValueField(wireName: 'business_account')
  bool get businessAccount;

  @nullable
  @BuiltValueField(wireName: 'cover_photo')
  String get coverPhoto;

  @nullable
  @BuiltValueField(wireName: 'wallet_amount')
  int get walletAmount;

  @nullable
  int get cartPrice;

  @nullable
  int get cartQuantity;

  @nullable
  @BuiltValueField(wireName: 'user_following')
  BuiltList<DocumentReference> get userFollowing;

  @nullable
  @BuiltValueField(wireName: 'user_followers')
  BuiltList<DocumentReference> get userFollowers;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: 'referral_code')
  String get referralCode;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..location = ''
    ..faceboodLink = ''
    ..instagramLink = ''
    ..userRolls = ListBuilder()
    ..userPosts = ListBuilder()
    ..postFavorite = ListBuilder()
    ..postCart = ListBuilder()
    ..userChats = ListBuilder()
    ..businessAccount = false
    ..coverPhoto = ''
    ..walletAmount = 0
    ..cartPrice = 0
    ..cartQuantity = 0
    ..userFollowing = ListBuilder()
    ..userFollowers = ListBuilder()
    ..password = ''
    ..referralCode = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String location,
  String faceboodLink,
  String instagramLink,
  bool businessAccount,
  String coverPhoto,
  int walletAmount,
  int cartPrice,
  int cartQuantity,
  String password,
  String referralCode,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..location = location
          ..faceboodLink = faceboodLink
          ..instagramLink = instagramLink
          ..userRolls = null
          ..userPosts = null
          ..postFavorite = null
          ..postCart = null
          ..userChats = null
          ..businessAccount = businessAccount
          ..coverPhoto = coverPhoto
          ..walletAmount = walletAmount
          ..cartPrice = cartPrice
          ..cartQuantity = cartQuantity
          ..userFollowing = null
          ..userFollowers = null
          ..password = password
          ..referralCode = referralCode));
