import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmPayWidget extends StatefulWidget {
  const ConfirmPayWidget({
    Key key,
    this.user,
    this.price,
  }) : super(key: key);

  final UsersRecord user;
  final int price;

  @override
  _ConfirmPayWidgetState createState() => _ConfirmPayWidgetState();
}

class _ConfirmPayWidgetState extends State<ConfirmPayWidget> {
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
                final usersUpdateData = createUsersRecordData(
                  walletAmount: functions.addBalance(
                      widget.user.walletAmount, widget.price),
                );
                await widget.user.reference.update(usersUpdateData);
                Navigator.pop(context);
              },
              text: FFLocalizations.of(context).getText(
                'itvgmc5h' /* Confirm to Pay */,
              ),
              icon: Icon(
                Icons.tap_and_play,
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
                borderRadius: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
