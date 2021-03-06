import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBusinessWidget extends StatefulWidget {
  const AddBusinessWidget({
    Key key,
    this.user,
  }) : super(key: key);

  final UsersRecord user;

  @override
  _AddBusinessWidgetState createState() => _AddBusinessWidgetState();
}

class _AddBusinessWidgetState extends State<AddBusinessWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FFButtonWidget(
              onPressed: () async {
                final usersUpdateData = {
                  'user_following':
                      FieldValue.arrayUnion([widget.user.reference]),
                };
                await currentUserReference.update(usersUpdateData);
                triggerPushNotification(
                  notificationTitle: 'New Client!!',
                  notificationText:
                      functions.addBusiness(currentUserDisplayName),
                  notificationSound: 'default',
                  userRefs: [widget.user.reference],
                  initialPageName: 'Notifications',
                  parameterData: {},
                );

                final notificationsCreateData = {
                  ...createNotificationsRecordData(
                    notificationType: 'add business',
                    notificationTime: getCurrentTimestamp,
                    notificationDetails:
                        functions.addBusiness(currentUserDisplayName),
                    notificationSender: currentUserReference,
                  ),
                  'receiver_users': [widget.user.reference],
                };
                await NotificationsRecord.collection
                    .doc()
                    .set(notificationsCreateData);
                Navigator.pop(context);
              },
              text: FFLocalizations.of(context).getText(
                'rte556zu' /* Confirm to Add Business */,
              ),
              icon: Icon(
                Icons.add_box_sharp,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 15,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 60,
                color: Color(0xFFDBE2E7),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF262D34),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
