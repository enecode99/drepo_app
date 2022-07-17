import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).tertiaryColor,
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/WhatsApp_Image_2021-12-09_at_11.20.36_AM.jpeg',
              fit: BoxFit.contain,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'LanguagePage': (data) async => LanguagePageWidget(),
  'PhoneVerification': (data) async => PhoneVerificationWidget(
        userno:
            await getDocumentParameter(data, 'userno', UsersRecord.serializer),
      ),
  'PhoneSignUp': (data) async => PhoneSignUpWidget(),
  'SignIn': (data) async => SignInWidget(),
  'ForgotPass': (data) async => ForgotPassWidget(),
  'SignUp': (data) async => SignUpWidget(),
  'Home': (data) async => NavBarPage(initialPage: 'Home'),
  'Welcome': (data) async => WelcomeWidget(),
  'UserPostsRolls': (data) async => UserPostsRollsWidget(),
  'ProfilePage': (data) async => hasMatchingParameters(data, {'phone'})
      ? ProfilePageWidget(
          phone: getParameter(data, 'phone'),
        )
      : NavBarPage(initialPage: 'ProfilePage'),
  'UserInfo': (data) async => UserInfoWidget(),
  'BusinessesPage': (data) async => BusinessesPageWidget(),
  'BusinessAccount': (data) async => BusinessAccountWidget(
        businessAcount: await getDocumentParameter(
            data, 'businessAcount', UsersRecord.serializer),
      ),
  'ProductPage': (data) async => ProductPageWidget(
        productView: await getDocumentParameter(
            data, 'productView', PostsRecord.serializer),
      ),
  'CreatePost': (data) async => CreatePostWidget(),
  'ViewRoll': (data) async => ViewRollWidget(
        rollView: await getDocumentParameter(
            data, 'rollView', RollsRecord.serializer),
      ),
  'CreateRoll': (data) async => CreateRollWidget(),
  'MyWishlist': (data) async => MyWishlistWidget(),
  'MyCart': (data) async => MyCartWidget(),
  'Electronics': (data) async => ElectronicsWidget(),
  'Vehicles': (data) async => VehiclesWidget(),
  'Fashion': (data) async => FashionWidget(),
  'PropertyEquipment': (data) async => PropertyEquipmentWidget(),
  'Services': (data) async => ServicesWidget(),
  'AgriculturalProducts': (data) async => AgriculturalProductsWidget(),
  'HomeAppliances': (data) async => HomeAppliancesWidget(),
  'Furniture': (data) async => FurnitureWidget(),
  'Polices': (data) async => PolicesWidget(),
  'Wallet': (data) async => WalletWidget(),
  'Notifications': (data) async => NotificationsWidget(),
  'Chatroom': (data) async => ChatroomWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
        chatRef: getParameter(data, 'chatRef'),
      ),
  'Allchatrooms': (data) async => AllchatroomsWidget(),
  'AddBusinessesPage': (data) async => AddBusinessesPageWidget(),
  'SendUserMoney': (data) async => SendUserMoneyWidget(),
  'InstalmentGoals': (data) async => InstalmentGoalsWidget(),
  'MyBusinesses': (data) async => MyBusinessesWidget(),
  'MyClients': (data) async => MyClientsWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
