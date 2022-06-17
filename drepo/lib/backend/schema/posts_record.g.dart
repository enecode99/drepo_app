// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.postContent;
    if (value != null) {
      result
        ..add('post_content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postTime;
    if (value != null) {
      result
        ..add('post_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.postPrice;
    if (value != null) {
      result
        ..add('post_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userPost;
    if (value != null) {
      result
        ..add('user_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.postCategory;
    if (value != null) {
      result
        ..add('post_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userFavorite;
    if (value != null) {
      result
        ..add('user_favorite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.userCart;
    if (value != null) {
      result
        ..add('user_cart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.postImages;
    if (value != null) {
      result
        ..add('post_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.productDetails;
    if (value != null) {
      result
        ..add('product_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postID;
    if (value != null) {
      result
        ..add('postID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postQuantity;
    if (value != null) {
      result
        ..add('post_quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartTotal;
    if (value != null) {
      result
        ..add('cart_Total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postOrder;
    if (value != null) {
      result
        ..add('post_order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  PostsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'post_content':
          result.postContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_time':
          result.postTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'post_price':
          result.postPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_post':
          result.userPost = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'post_category':
          result.postCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_favorite':
          result.userFavorite.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'user_cart':
          result.userCart.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'post_images':
          result.postImages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'product_details':
          result.productDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postID':
          result.postID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_quantity':
          result.postQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cart_Total':
          result.cartTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'post_order':
          result.postOrder = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$PostsRecord extends PostsRecord {
  @override
  final String postContent;
  @override
  final DateTime postTime;
  @override
  final int postPrice;
  @override
  final DocumentReference<Object> userPost;
  @override
  final String postCategory;
  @override
  final BuiltList<DocumentReference<Object>> userFavorite;
  @override
  final BuiltList<DocumentReference<Object>> userCart;
  @override
  final BuiltList<String> postImages;
  @override
  final String productDetails;
  @override
  final String postID;
  @override
  final int postQuantity;
  @override
  final int cartTotal;
  @override
  final DocumentReference<Object> postOrder;
  @override
  final DocumentReference<Object> reference;

  factory _$PostsRecord([void Function(PostsRecordBuilder) updates]) =>
      (new PostsRecordBuilder()..update(updates)).build();

  _$PostsRecord._(
      {this.postContent,
      this.postTime,
      this.postPrice,
      this.userPost,
      this.postCategory,
      this.userFavorite,
      this.userCart,
      this.postImages,
      this.productDetails,
      this.postID,
      this.postQuantity,
      this.cartTotal,
      this.postOrder,
      this.reference})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        postContent == other.postContent &&
        postTime == other.postTime &&
        postPrice == other.postPrice &&
        userPost == other.userPost &&
        postCategory == other.postCategory &&
        userFavorite == other.userFavorite &&
        userCart == other.userCart &&
        postImages == other.postImages &&
        productDetails == other.productDetails &&
        postID == other.postID &&
        postQuantity == other.postQuantity &&
        cartTotal == other.cartTotal &&
        postOrder == other.postOrder &&
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
                                                            0,
                                                            postContent
                                                                .hashCode),
                                                        postTime.hashCode),
                                                    postPrice.hashCode),
                                                userPost.hashCode),
                                            postCategory.hashCode),
                                        userFavorite.hashCode),
                                    userCart.hashCode),
                                postImages.hashCode),
                            productDetails.hashCode),
                        postID.hashCode),
                    postQuantity.hashCode),
                cartTotal.hashCode),
            postOrder.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsRecord')
          ..add('postContent', postContent)
          ..add('postTime', postTime)
          ..add('postPrice', postPrice)
          ..add('userPost', userPost)
          ..add('postCategory', postCategory)
          ..add('userFavorite', userFavorite)
          ..add('userCart', userCart)
          ..add('postImages', postImages)
          ..add('productDetails', productDetails)
          ..add('postID', postID)
          ..add('postQuantity', postQuantity)
          ..add('cartTotal', cartTotal)
          ..add('postOrder', postOrder)
          ..add('reference', reference))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord _$v;

  String _postContent;
  String get postContent => _$this._postContent;
  set postContent(String postContent) => _$this._postContent = postContent;

  DateTime _postTime;
  DateTime get postTime => _$this._postTime;
  set postTime(DateTime postTime) => _$this._postTime = postTime;

  int _postPrice;
  int get postPrice => _$this._postPrice;
  set postPrice(int postPrice) => _$this._postPrice = postPrice;

  DocumentReference<Object> _userPost;
  DocumentReference<Object> get userPost => _$this._userPost;
  set userPost(DocumentReference<Object> userPost) =>
      _$this._userPost = userPost;

  String _postCategory;
  String get postCategory => _$this._postCategory;
  set postCategory(String postCategory) => _$this._postCategory = postCategory;

  ListBuilder<DocumentReference<Object>> _userFavorite;
  ListBuilder<DocumentReference<Object>> get userFavorite =>
      _$this._userFavorite ??= new ListBuilder<DocumentReference<Object>>();
  set userFavorite(ListBuilder<DocumentReference<Object>> userFavorite) =>
      _$this._userFavorite = userFavorite;

  ListBuilder<DocumentReference<Object>> _userCart;
  ListBuilder<DocumentReference<Object>> get userCart =>
      _$this._userCart ??= new ListBuilder<DocumentReference<Object>>();
  set userCart(ListBuilder<DocumentReference<Object>> userCart) =>
      _$this._userCart = userCart;

  ListBuilder<String> _postImages;
  ListBuilder<String> get postImages =>
      _$this._postImages ??= new ListBuilder<String>();
  set postImages(ListBuilder<String> postImages) =>
      _$this._postImages = postImages;

  String _productDetails;
  String get productDetails => _$this._productDetails;
  set productDetails(String productDetails) =>
      _$this._productDetails = productDetails;

  String _postID;
  String get postID => _$this._postID;
  set postID(String postID) => _$this._postID = postID;

  int _postQuantity;
  int get postQuantity => _$this._postQuantity;
  set postQuantity(int postQuantity) => _$this._postQuantity = postQuantity;

  int _cartTotal;
  int get cartTotal => _$this._cartTotal;
  set cartTotal(int cartTotal) => _$this._cartTotal = cartTotal;

  DocumentReference<Object> _postOrder;
  DocumentReference<Object> get postOrder => _$this._postOrder;
  set postOrder(DocumentReference<Object> postOrder) =>
      _$this._postOrder = postOrder;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postContent = $v.postContent;
      _postTime = $v.postTime;
      _postPrice = $v.postPrice;
      _userPost = $v.userPost;
      _postCategory = $v.postCategory;
      _userFavorite = $v.userFavorite?.toBuilder();
      _userCart = $v.userCart?.toBuilder();
      _postImages = $v.postImages?.toBuilder();
      _productDetails = $v.productDetails;
      _postID = $v.postID;
      _postQuantity = $v.postQuantity;
      _cartTotal = $v.cartTotal;
      _postOrder = $v.postOrder;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsRecord build() {
    _$PostsRecord _$result;
    try {
      _$result = _$v ??
          new _$PostsRecord._(
              postContent: postContent,
              postTime: postTime,
              postPrice: postPrice,
              userPost: userPost,
              postCategory: postCategory,
              userFavorite: _userFavorite?.build(),
              userCart: _userCart?.build(),
              postImages: _postImages?.build(),
              productDetails: productDetails,
              postID: postID,
              postQuantity: postQuantity,
              cartTotal: cartTotal,
              postOrder: postOrder,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userFavorite';
        _userFavorite?.build();
        _$failedField = 'userCart';
        _userCart?.build();
        _$failedField = 'postImages';
        _postImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
