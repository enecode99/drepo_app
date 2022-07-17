import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String formatPrice(int price) {
  // return formated price by separating each  hundred with a comma . eg; 100,000
  return price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
}

String charLimit22(String sentence) {
  // return sentence by limiting number of characters to 30
  if (sentence.length < 22) {
    return sentence;
  }
  return '${sentence.substring(0, 22)}...';
}

String charLimit88(String sentence) {
  // return sentence by limiting number of characters to 30
  if (sentence.length < 88) {
    return sentence;
  }
  return '${sentence.substring(0, 88)}...';
}

String charLimit300(String sentence) {
  // return sentence by limiting number of characters to 30
  if (sentence.length < 300) {
    return sentence;
  }
  return '${sentence.substring(0, 300)}...';
}

int postCart(List<PostsRecord> cartPrice) {
  // return sum of post_price in Posts document.
  return cartPrice
      .map((e) => e.postPrice.toString())
      .map((s) => int.parse(s))
      .fold(0, (p, e) => p + e);
}

bool rollSeen(DateTimeRange differNo) {
  // if differNo is greater than 23 hours return true else return false.
  return differNo != null && differNo.duration.inDays >= 1;
}

bool rollVisible(
  DateTime initialT,
  DateTime finalT,
) {
  // if initialT-finalT  greater than 23 hours return true else return false.
  if (initialT.difference(finalT).inHours > 23) {
    return true;
  } else {
    return false;
  }
}

int addCart(List<int> cartPrice) {
  // return sum of cartPrice.
  return cartPrice.reduce((value, item) => value + item);
}

int totalCart(
  int cartQuantity,
  int itemPrice,
) {
  // Increase cartQuantity by 1 and then multiply by itemPrice.
  int total = ((cartQuantity++) * itemPrice);
  return total;
}

int incrementCart(int incrementQuantity) {
  // Increment incrementQuantity by 1.
  return ++incrementQuantity;
}

int decrementCart(int decrementQuantity) {
  // decrement decrementQuantity by 1.
  return --decrementQuantity;
}

int addBalance(
  int balance,
  int price,
) {
  // add balance with price.
  return balance + price;
}

int reduceBalance(
  int balance,
  int price,
) {
  // substract price from balance.
  balance = balance - price;
  return balance;
}

String addBusiness(String clientName) {
  // Add string + clientName
  String a = 'has added your business';
  return clientName + ' ' + a;
}

String removeBusiness(String clientName) {
  // Add string + clientName
  String a = 'has removed your business';
  return clientName + ' ' + a;
}

String postNotification(String clientName) {
  // Add string + clientName
  String a = 'has added a new post';
  return clientName + ' ' + a;
}

String rollNotification(String clientName) {
  // Add string + clientName
  String a = 'has added a new roll';
  return clientName + ' ' + a;
}

String wishlistRollNotification(String clientName) {
  // Add string + clientName
  String a = 'has added a post to wishlist';
  return clientName + ' ' + a;
}

String cartNotification(String clientName) {
  // Add string + clientName
  String a = 'has added a post to cart';
  return clientName + ' ' + a;
}
