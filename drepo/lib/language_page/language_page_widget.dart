import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sign_in/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguagePageWidget extends StatefulWidget {
  const LanguagePageWidget({Key key}) : super(key: key);

  @override
  _LanguagePageWidgetState createState() => _LanguagePageWidgetState();
}

class _LanguagePageWidgetState extends State<LanguagePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0.05, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.85, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'mzwlrnrn' /* Choose Language (Chagua Lugha) */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                FlutterFlowLanguageSelector(
                  width: 300,
                  backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
                  borderColor: FlutterFlowTheme.of(context).primaryColor,
                  dropdownIconColor: FlutterFlowTheme.of(context).primaryColor,
                  borderRadius: 8,
                  textStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                  hideFlags: false,
                  flagSize: 24,
                  flagTextGap: 8,
                  currentLanguage: FFLocalizations.of(context).languageCode,
                  languages: FFLocalizations.languages(),
                  onChanged: (lang) => setAppLanguage(context, lang),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInWidget(),
                        ),
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      'a8dpqnfm' /* OK */,
                    ),
                    options: FFButtonOptions(
                      width: 130,
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
                      borderRadius: 12,
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
