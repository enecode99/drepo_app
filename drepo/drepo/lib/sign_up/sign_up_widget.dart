import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../polices/polices_widget.dart';
import '../sign_in/sign_in_widget.dart';
import '../welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController emailTextFieldController;
  TextEditingController nameTextFieldController;
  TextEditingController phoneFieldController;
  TextEditingController passTextFieldController;
  bool passTextFieldVisibility;
  TextEditingController passTextField2Controller;
  bool passTextField2Visibility;
  bool personalCheckValue;
  bool businessCheckValue;
  bool termsandConditionCheckValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextFieldController = TextEditingController();
    nameTextFieldController = TextEditingController();
    phoneFieldController = TextEditingController();
    passTextFieldController = TextEditingController();
    passTextFieldVisibility = false;
    passTextField2Controller = TextEditingController();
    passTextField2Visibility = false;
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: 130,
                    height: 130,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/drepologo.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'k2cezrnm' /* Sign Up */,
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'zpb4j25q' /* Username */,
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
                    controller: nameTextFieldController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        'eky4a3n1' /* Enter your username.... */,
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
                    keyboardType: TextInputType.name,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          'b89mlr48' /* Username is required. */,
                        );
                      }

                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bcl8xyyb' /* Email Address */,
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
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        'zj60g4ye' /* Enter your email address.... */,
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
                          '38bpgjic' /* Email address is required. */,
                        );
                      }

                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'rr7m1z6m' /* Phone Number */,
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
                    controller: phoneFieldController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'poxvrgyt' /* +255 */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        'b1v1zus7' /* Enter your username.... */,
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
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'meaqv4qa' /* Password */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: TextFormField(
                    controller: passTextFieldController,
                    obscureText: !passTextFieldVisibility,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        '0d6jy6fi' /* Enter your password.... */,
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
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passTextFieldVisibility =
                              !passTextFieldVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passTextFieldVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          'gypckcnl' /* Password is required. */,
                        );
                      }

                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'kxj8w76x' /* Confirm Password */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: TextFormField(
                    controller: passTextField2Controller,
                    obscureText: !passTextField2Visibility,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        '9yxtw9cq' /* Confirm your password.... */,
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
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passTextField2Visibility =
                              !passTextField2Visibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passTextField2Visibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          '6gg8lk33' /* Confirm Password is required. */,
                        );
                      }

                      return null;
                    },
                  ),
                ),
                Theme(
                  data: ThemeData(
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).primaryColor,
                  ),
                  child: CheckboxListTile(
                    value: personalCheckValue ??= false,
                    onChanged: (newValue) =>
                        setState(() => personalCheckValue = newValue),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'rolof17r' /* Create personal account */,
                      ),
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontSize: 16,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryColor,
                    activeColor: FlutterFlowTheme.of(context).primaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).primaryColor,
                        ),
                        child: CheckboxListTile(
                          value: businessCheckValue ??= false,
                          onChanged: (newValue) =>
                              setState(() => businessCheckValue = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'ih6g78xi' /* Create business account */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).primaryColor,
                        ),
                        child: CheckboxListTile(
                          value: termsandConditionCheckValue ??= false,
                          onChanged: (newValue) => setState(
                              () => termsandConditionCheckValue = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '5ptm4kst' /* Agree with Terms and Condition... */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PolicesWidget(),
                        ),
                      );
                    },
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'oiqy250s' /* Read Terms and Conditions */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if ((termsandConditionCheckValue) == false)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Terms & Conditions'),
                                  content: Text(
                                      'Please accept terms and conditions to Sign Up.'),
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
                          },
                          text: FFLocalizations.of(context).getText(
                            'odi74ezl' /* Sign Up */,
                          ),
                          options: FFButtonOptions(
                            width: 350,
                            height: 40,
                            color: Color(0xFF666083),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 20,
                          ),
                        ),
                      ),
                    if ((termsandConditionCheckValue) == true)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (passTextFieldController?.text !=
                                passTextField2Controller?.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Passwords don\'t match!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user = await createAccountWithEmail(
                              context,
                              emailTextFieldController.text,
                              passTextFieldController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            final usersCreateData = createUsersRecordData(
                              email: emailTextFieldController.text,
                              displayName: nameTextFieldController.text,
                              businessAccount: businessCheckValue,
                              phoneNumber: phoneFieldController.text,
                              password: passTextFieldController.text,
                              referralCode: nameTextFieldController.text,
                            );
                            await UsersRecord.collection
                                .doc(user.uid)
                                .update(usersCreateData);

                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeWidget(),
                              ),
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'zf3872kg' /* Sign Up */,
                          ),
                          options: FFButtonOptions(
                            width: 350,
                            height: 40,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
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
                        'nsemducd' /* ALREADY HAVE AN ACCOUNT? */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
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
