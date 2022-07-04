import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sign_in/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassWidget extends StatefulWidget {
  const ForgotPassWidget({Key key}) : super(key: key);

  @override
  _ForgotPassWidgetState createState() => _ForgotPassWidgetState();
}

class _ForgotPassWidgetState extends State<ForgotPassWidget> {
  TextEditingController emailTextFieldController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 20, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'tey5joo2' /* Forgot Password */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'tcg1yo58' /* Email Address */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontSize: 16,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: TextFormField(
                    controller: emailTextFieldController,
                    onFieldSubmitted: (_) async {
                      if (emailTextFieldController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Email required!',
                            ),
                          ),
                        );
                        return;
                      }
                      await resetPassword(
                        email: emailTextFieldController.text,
                        context: context,
                      );
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        '4eh9vn1s' /* Enter your email address.... */,
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
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          '8c0xrwj7' /* Email address is required. */,
                        );
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (emailTextFieldController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Email required!',
                            ),
                          ),
                        );
                        return;
                      }
                      await resetPassword(
                        email: emailTextFieldController.text,
                        context: context,
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      'rn4tbu3h' /* SUBMIT */,
                    ),
                    options: FFButtonOptions(
                      width: 350,
                      height: 40,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInWidget(),
                        ),
                      );
                    },
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bj5e9mma' /* SIGNIN */,
                      ),
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
