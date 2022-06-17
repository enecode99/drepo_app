// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.faceboodLink;
    if (value != null) {
      result
        ..add('facebood_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramLink;
    if (value != null) {
      result
        ..add('Instagram_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRolls;
    if (value != null) {
      result
        ..add('user_rolls')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.userPosts;
    if (value != null) {
      result
        ..add('user_posts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.postFavorite;
    if (value != null) {
      result
        ..add('post_favorite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.postCart;
    if (value != null) {
      result
        ..add('post_cart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.userChats;
    if (value != null) {
      result
        ..add('user_chats')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.businessAccount;
    if (value != null) {
      result
        ..add('business_account')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.coverPhoto;
    if (value != null) {
      result
        ..add('cover_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletAmount;
    if (value != null) {
      result
        ..add('wallet_amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartPrice;
    if (value != null) {
      result
        ..add('cartPrice')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartQuantity;
    if (value != null) {
      result
        ..add('cartQuantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userFollowing;
    if (value != null) {
      result
        ..add('user_following')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.userFollowers;
    if (value != null) {
      result
        ..add('user_followers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('referral_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'facebood_link':
          result.faceboodLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Instagram_link':
          result.instagramLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_rolls':
          result.userRolls.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'user_posts':
          result.userPosts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'post_favorite':
          result.postFavorite.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'post_cart':
          result.postCart.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'user_chats':
          result.userChats.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'business_account':
          result.businessAccount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cover_photo':
          result.coverPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wallet_amount':
          result.walletAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cartPrice':
          result.cartPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cartQuantity':
          result.cartQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_following':
          result.userFollowing.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'user_followers':
          result.userFollowers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referral_code':
          result.referralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String location;
  @override
  final String faceboodLink;
  @override
  final String instagramLink;
  @override
  final BuiltList<DocumentReference<Object>> userRolls;
  @override
  final BuiltList<DocumentReference<Object>> userPosts;
  @override
  final BuiltList<DocumentReference<Object>> postFavorite;
  @override
  final BuiltList<DocumentReference<Object>> postCart;
  @override
  final BuiltList<DocumentReference<Object>> userChats;
  @override
  final bool businessAccount;
  @override
  final String coverPhoto;
  @override
  final int walletAmount;
  @override
  final int cartPrice;
  @override
  final int cartQuantity;
  @override
  final BuiltList<DocumentReference<Object>> userFollowing;
  @override
  final BuiltList<DocumentReference<Object>> userFollowers;
  @override
  final String password;
  @override
  final String referralCode;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.location,
      this.faceboodLink,
      this.instagramLink,
      this.userRolls,
      this.userPosts,
      this.postFavorite,
      this.postCart,
      this.userChats,
      this.businessAccount,
      this.coverPhoto,
      this.walletAmount,
      this.cartPrice,
      this.cartQuantity,
      this.userFollowing,
      this.userFollowers,
      this.password,
      this.referralCode,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        location == other.location &&
        faceboodLink == other.faceboodLink &&
        instagramLink == other.instagramLink &&
        userRolls == other.userRolls &&
        userPosts == other.userPosts &&
        postFavorite == other.postFavorite &&
        postCart == other.postCart &&
        userChats == other.userChats &&
        businessAccount == other.businessAccount &&
        coverPhoto == other.coverPhoto &&
        walletAmount == other.walletAmount &&
        cartPrice == other.cartPrice &&
        cartQuantity == other.cartQuantity &&
        userFollowing == other.userFollowing &&
        userFollowers == other.userFollowers &&
        password == other.password &&
        referralCode == other.referralCode &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, email.hashCode), displayName.hashCode), photoUrl.hashCode), uid.hashCode), createdTime.hashCode),
                                                                                phoneNumber.hashCode),
                                                                            location.hashCode),
                                                                        faceboodLink.hashCode),
                                                                    instagramLink.hashCode),
                                                                userRolls.hashCode),
                                                            userPosts.hashCode),
                                                        postFavorite.hashCode),
                                                    postCart.hashCode),
                                                userChats.hashCode),
                                            businessAccount.hashCode),
                                        coverPhoto.hashCode),
                                    walletAmount.hashCode),
                                cartPrice.hashCode),
                            cartQuantity.hashCode),
                        userFollowing.hashCode),
                    userFollowers.hashCode),
                password.hashCode),
            referralCode.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('location', location)
          ..add('faceboodLink', faceboodLink)
          ..add('instagramLink', instagramLink)
          ..add('userRolls', userRolls)
          ..add('userPosts', userPosts)
          ..add('postFavorite', postFavorite)
          ..add('postCart', postCart)
          ..add('userChats', userChats)
          ..add('businessAccount', businessAccount)
          ..add('coverPhoto', coverPhoto)
          ..add('walletAmount', walletAmount)
          ..add('cartPrice', cartPrice)
          ..add('cartQuantity', cartQuantity)
          ..add('userFollowing', userFollowing)
          ..add('userFollowers', userFollowers)
          ..add('password', password)
          ..add('referralCode', referralCode)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _faceboodLink;
  String get faceboodLink => _$this._faceboodLink;
  set faceboodLink(String faceboodLink) => _$this._faceboodLink = faceboodLink;

  String _instagramLink;
  String get instagramLink => _$this._instagramLink;
  set instagramLink(String instagramLink) =>
      _$this._instagramLink = instagramLink;

  ListBuilder<DocumentReference<Object>> _userRolls;
  ListBuilder<DocumentReference<Object>> get userRolls =>
      _$this._userRolls ??= new ListBuilder<DocumentReference<Object>>();
  set userRolls(ListBuilder<DocumentReference<Object>> userRolls) =>
      _$this._userRolls = userRolls;

  ListBuilder<DocumentReference<Object>> _userPosts;
  ListBuilder<DocumentReference<Object>> get userPosts =>
      _$this._userPosts ??= new ListBuilder<DocumentReference<Object>>();
  set userPosts(ListBuilder<DocumentReference<Object>> userPosts) =>
      _$this._userPosts = userPosts;

  ListBuilder<DocumentReference<Object>> _postFavorite;
  ListBuilder<DocumentReference<Object>> get postFavorite =>
      _$this._postFavorite ??= new ListBuilder<DocumentReference<Object>>();
  set postFavorite(ListBuilder<DocumentReference<Object>> postFavorite) =>
      _$this._postFavorite = postFavorite;

  ListBuilder<DocumentReference<Object>> _postCart;
  ListBuilder<DocumentReference<Object>> get postCart =>
      _$this._postCart ??= new ListBuilder<DocumentReference<Object>>();
  set postCart(ListBuilder<DocumentReference<Object>> postCart) =>
      _$this._postCart = postCart;

  ListBuilder<DocumentReference<Object>> _userChats;
  ListBuilder<DocumentReference<Object>> get userChats =>
      _$this._userChats ??= new ListBuilder<DocumentReference<Object>>();
  set userChats(ListBuilder<DocumentReference<Object>> userChats) =>
      _$this._userChats = userChats;

  bool _businessAccount;
  bool get businessAccount => _$this._businessAccount;
  set businessAccount(bool businessAccount) =>
      _$this._businessAccount = businessAccount;

  String _coverPhoto;
  String get coverPhoto => _$this._coverPhoto;
  set coverPhoto(String coverPhoto) => _$this._coverPhoto = coverPhoto;

  int _walletAmount;
  int get walletAmount => _$this._walletAmount;
  set walletAmount(int walletAmount) => _$this._walletAmount = walletAmount;

  int _cartPrice;
  int get cartPrice => _$this._cartPrice;
  set cartPrice(int cartPrice) => _$this._cartPrice = cartPrice;

  int _cartQuantity;
  int get cartQuantity => _$this._cartQuantity;
  set cartQuantity(int cartQuantity) => _$this._cartQuantity = cartQuantity;

  ListBuilder<DocumentReference<Object>> _userFollowing;
  ListBuilder<DocumentReference<Object>> get userFollowing =>
      _$this._userFollowing ??= new ListBuilder<DocumentReference<Object>>();
  set userFollowing(ListBuilder<DocumentReference<Object>> userFollowing) =>
      _$this._userFollowing = userFollowing;

  ListBuilder<DocumentReference<Object>> _userFollowers;
  ListBuilder<DocumentReference<Object>> get userFollowers =>
      _$this._userFollowers ??= new ListBuilder<DocumentReference<Object>>();
  set userFollowers(ListBuilder<DocumentReference<Object>> userFollowers) =>
      _$this._userFollowers = userFollowers;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _referralCode;
  String get referralCode => _$this._referralCode;
  set referralCode(String referralCode) => _$this._referralCode = referralCode;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _location = $v.location;
      _faceboodLink = $v.faceboodLink;
      _instagramLink = $v.instagramLink;
      _userRolls = $v.userRolls?.toBuilder();
      _userPosts = $v.userPosts?.toBuilder();
      _postFavorite = $v.postFavorite?.toBuilder();
      _postCart = $v.postCart?.toBuilder();
      _userChats = $v.userChats?.toBuilder();
      _businessAccount = $v.businessAccount;
      _coverPhoto = $v.coverPhoto;
      _walletAmount = $v.walletAmount;
      _cartPrice = $v.cartPrice;
      _cartQuantity = $v.cartQuantity;
      _userFollowing = $v.userFollowing?.toBuilder();
      _userFollowers = $v.userFollowers?.toBuilder();
      _password = $v.password;
      _referralCode = $v.referralCode;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              location: location,
              faceboodLink: faceboodLink,
              instagramLink: instagramLink,
              userRolls: _userRolls?.build(),
              userPosts: _userPosts?.build(),
              postFavorite: _postFavorite?.build(),
              postCart: _postCart?.build(),
              userChats: _userChats?.build(),
              businessAccount: businessAccount,
              coverPhoto: coverPhoto,
              walletAmount: walletAmount,
              cartPrice: cartPrice,
              cartQuantity: cartQuantity,
              userFollowing: _userFollowing?.build(),
              userFollowers: _userFollowers?.build(),
              password: password,
              referralCode: referralCode,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userRolls';
        _userRolls?.build();
        _$failedField = 'userPosts';
        _userPosts?.build();
        _$failedField = 'postFavorite';
        _postFavorite?.build();
        _$failedField = 'postCart';
        _postCart?.build();
        _$failedField = 'userChats';
        _userChats?.build();

        _$failedField = 'userFollowing';
        _userFollowing?.build();
        _$failedField = 'userFollowers';
        _userFollowers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
