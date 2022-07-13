import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileMoneyPassPostWidget extends StatefulWidget {
  const MobileMoneyPassPostWidget({
    Key key,
    this.post,
    this.referralCode,
    this.deriveryDetails,
  }) : super(key: key);

  final PostsRecord post;
  final String referralCode;
  final String deriveryDetails;

  @override
  _MobileMoneyPassPostWidgetState createState() =>
      _MobileMoneyPassPostWidgetState();
}

class _MobileMoneyPassPostWidgetState extends State<MobileMoneyPassPostWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'si0qwh98' /* Enter Password. */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
            child: TextFormField(
              controller: textController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: FFLocalizations.of(context).getText(
                  'q7w4r7lm' /* enter password. */,
                ),
                hintText: FFLocalizations.of(context).getText(
                  'cu48lv13' /*  */,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                if ((valueOrDefault(currentUserDocument?.password, '')) ==
                    (textController.text)) {
                  if ((valueOrDefault(currentUserDocument?.walletAmount, 0)) <
                      (widget.post.postPrice)) {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Sorry!!'),
                          content: Text(
                              'Huna kiasi cha kutosha kufanya muamala huu.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    final ordersCreateData = {
                      ...createOrdersRecordData(
                        orderAmount: widget.post.postPrice,
                        orderPaid: widget.post.postPrice,
                        orderTime: getCurrentTimestamp,
                        orderSeller: widget.post.userPost,
                        deriveryDetails: widget.deriveryDetails,
                        isOrderRoll: false,
                        referral: widget.referralCode,
                        isInstallment: false,
                        orderPost: widget.post.reference,
                      ),
                      'order_users': [currentUserReference],
                    };
                    await OrdersRecord.collection.doc().set(ordersCreateData);
                    Navigator.pop(context);
                  }
                } else {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Sorry!!'),
                        content: Text('Weka neno siri (password) sahihi'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              text: FFLocalizations.of(context).getText(
                'kc6cwh4v' /* PAY */,
              ),
              options: FFButtonOptions(
                width: 250,
                height: 50,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 2,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
