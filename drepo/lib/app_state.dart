import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _rollVavorite = prefs
            .getStringList('ff_rollVavorite')
            ?.map((path) => path.ref)
            ?.toList() ??
        _rollVavorite;
    _rollCart =
        prefs.getStringList('ff_rollCart')?.map((path) => path.ref)?.toList() ??
            _rollCart;
    _postFavorite = prefs
            .getStringList('ff_postFavorite')
            ?.map((path) => path.ref)
            ?.toList() ??
        _postFavorite;
    _postCart =
        prefs.getStringList('ff_postCart')?.map((path) => path.ref)?.toList() ??
            _postCart;
    _userNo = prefs.getString('ff_userNo') ?? _userNo;
    _cartPrice = prefs.getString('ff_cartPrice')?.ref ?? _cartPrice;
  }

  SharedPreferences prefs;

  List<DocumentReference> _rollVavorite = [];
  List<DocumentReference> get rollVavorite => _rollVavorite;
  set rollVavorite(List<DocumentReference> _value) {
    _rollVavorite = _value;
    prefs.setStringList('ff_rollVavorite', _value.map((x) => x.path).toList());
  }

  void addToRollVavorite(DocumentReference _value) {
    _rollVavorite.add(_value);
    prefs.setStringList(
        'ff_rollVavorite', _rollVavorite.map((x) => x.path).toList());
  }

  void removeFromRollVavorite(DocumentReference _value) {
    _rollVavorite.remove(_value);
    prefs.setStringList(
        'ff_rollVavorite', _rollVavorite.map((x) => x.path).toList());
  }

  List<DocumentReference> _rollCart = [];
  List<DocumentReference> get rollCart => _rollCart;
  set rollCart(List<DocumentReference> _value) {
    _rollCart = _value;
    prefs.setStringList('ff_rollCart', _value.map((x) => x.path).toList());
  }

  void addToRollCart(DocumentReference _value) {
    _rollCart.add(_value);
    prefs.setStringList('ff_rollCart', _rollCart.map((x) => x.path).toList());
  }

  void removeFromRollCart(DocumentReference _value) {
    _rollCart.remove(_value);
    prefs.setStringList('ff_rollCart', _rollCart.map((x) => x.path).toList());
  }

  List<DocumentReference> _postFavorite = [];
  List<DocumentReference> get postFavorite => _postFavorite;
  set postFavorite(List<DocumentReference> _value) {
    _postFavorite = _value;
    prefs.setStringList('ff_postFavorite', _value.map((x) => x.path).toList());
  }

  void addToPostFavorite(DocumentReference _value) {
    _postFavorite.add(_value);
    prefs.setStringList(
        'ff_postFavorite', _postFavorite.map((x) => x.path).toList());
  }

  void removeFromPostFavorite(DocumentReference _value) {
    _postFavorite.remove(_value);
    prefs.setStringList(
        'ff_postFavorite', _postFavorite.map((x) => x.path).toList());
  }

  List<DocumentReference> _postCart = [];
  List<DocumentReference> get postCart => _postCart;
  set postCart(List<DocumentReference> _value) {
    _postCart = _value;
    prefs.setStringList('ff_postCart', _value.map((x) => x.path).toList());
  }

  void addToPostCart(DocumentReference _value) {
    _postCart.add(_value);
    prefs.setStringList('ff_postCart', _postCart.map((x) => x.path).toList());
  }

  void removeFromPostCart(DocumentReference _value) {
    _postCart.remove(_value);
    prefs.setStringList('ff_postCart', _postCart.map((x) => x.path).toList());
  }

  String _userNo = '';
  String get userNo => _userNo;
  set userNo(String _value) {
    _userNo = _value;
    prefs.setString('ff_userNo', _value);
  }

  DocumentReference _cartPrice;
  DocumentReference get cartPrice => _cartPrice;
  set cartPrice(DocumentReference _value) {
    _cartPrice = _value;
    prefs.setString('ff_cartPrice', _value.path);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
