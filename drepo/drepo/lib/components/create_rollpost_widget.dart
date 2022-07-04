import '../create_post/create_post_widget.dart';
import '../create_roll/create_roll_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateRollpostWidget extends StatefulWidget {
  const CreateRollpostWidget({Key key}) : super(key: key);

  @override
  _CreateRollpostWidgetState createState() => _CreateRollpostWidgetState();
}

class _CreateRollpostWidgetState extends State<CreateRollpostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
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
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatePostWidget(),
                  ),
                );
              },
              text: FFLocalizations.of(context).getText(
                'asifa4by' /* Create Post */,
              ),
              icon: Icon(
                Icons.add_sharp,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateRollWidget(),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  '2js02b7h' /* Create Roll */,
                ),
                icon: Icon(
                  Icons.linked_camera,
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
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'ncw2ij49' /* Cancel */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF57636C),
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
