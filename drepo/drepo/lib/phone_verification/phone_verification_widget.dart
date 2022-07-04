import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_page/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneVerificationWidget extends StatefulWidget {
  const PhoneVerificationWidget({
    Key key,
    this.userno,
  }) : super(key: key);

  final UsersRecord userno;

  @override
  _PhoneVerificationWidgetState createState() =>
      _PhoneVerificationWidgetState();
}

class _PhoneVerificationWidgetState extends State<PhoneVerificationWidget> {
  TextEditingController codeTextFieldController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    codeTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Color(0xFF1E0A3D)),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).tertiaryColor,
            size: 24,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'zycx4xts' /* Verify SMS Code */,
          ),
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).tertiaryColor,
                fontSize: 18,
              ),
        ),
        actions: [],
        centerTitle: true,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 40, 15, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'uu196jv5' /* Enter a verification code we  ... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                child: TextFormField(
                  controller: codeTextFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: FFLocalizations.of(context).getText(
                      'o8zspyxz' /* Enter a verification code. */,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF1E0A3D),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF1E0A3D),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.number,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Field is required';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final smsCodeVal = codeTextFieldController.text;
                    if (smsCodeVal == null || smsCodeVal.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Enter SMS verification code.'),
                        ),
                      );
                      return;
                    }
                    final phoneVerifiedUser = await verifySmsCode(
                      context: context,
                      smsCode: smsCodeVal,
                    );
                    if (phoneVerifiedUser == null) {
                      return;
                    }

                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePageWidget(
                          phone: widget.userno.phoneNumber,
                        ),
                      ),
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    '4g3adow0' /* SUBMIT */,
                  ),
                  options: FFButtonOptions(
                    width: 350,
                    height: 40,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
