import '../backend/backend.dart';
import '../components/roll_installment_widget.dart';
import '../components/roll_pay_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrepoPayCartWidget extends StatefulWidget {
  const DrepoPayCartWidget({
    Key key,
    this.rollPay,
  }) : super(key: key);

  final RollsRecord rollPay;

  @override
  _DrepoPayCartWidgetState createState() => _DrepoPayCartWidgetState();
}

class _DrepoPayCartWidgetState extends State<DrepoPayCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      constraints: BoxConstraints(
        maxHeight: 250,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFEBE6ED),
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
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: RollPayWidget(
                        productPrice: widget.rollPay,
                      ),
                    );
                  },
                );
              },
              text: FFLocalizations.of(context).getText(
                'x5nne71r' /*  PAY */,
              ),
              icon: Icon(
                Icons.account_balance_wallet_rounded,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 15,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 60,
                color: FlutterFlowTheme.of(context).secondaryColor,
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
            if ((widget.rollPay.rollPrice) > 100000)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: RollInstallmentWidget(
                            roll: widget.rollPay,
                          ),
                        );
                      },
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'jldfmqb1' /* Installment PAY */,
                  ),
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).secondaryColor,
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
              ),
          ],
        ),
      ),
    );
  }
}
