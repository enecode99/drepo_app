import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/post_more_widget.dart';
import '../components/roll_more_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../product_page/product_page_widget.dart';
import '../view_roll/view_roll_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPostsRollsWidget extends StatefulWidget {
  const UserPostsRollsWidget({Key key}) : super(key: key);

  @override
  _UserPostsRollsWidgetState createState() => _UserPostsRollsWidgetState();
}

class _UserPostsRollsWidgetState extends State<UserPostsRollsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 24,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'n1263dc9' /* My Posts & Rolls */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 16,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: StreamBuilder<List<RollsRecord>>(
                  stream: queryRollsRecord(
                    queryBuilder: (rollsRecord) => rollsRecord
                        .where('roll_user', isEqualTo: currentUserReference),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<RollsRecord> rowRollsRecordList = snapshot.data;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(rowRollsRecordList.length,
                            (rowIndex) {
                          final rowRollsRecord = rowRollsRecordList[rowIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ViewRollWidget(
                                      rollView: rowRollsRecord,
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final rollImage = (rowRollsRecord
                                                  .rollImages
                                                  .toList()
                                                  ?.toList() ??
                                              [])
                                          .take(1)
                                          .toList();
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            rollImage.length, (rollImageIndex) {
                                          final rollImageItem =
                                              rollImage[rollImageIndex];
                                          return Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    3.53, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        valueOrDefault<String>(
                                                      rollImageItem,
                                                      'https://picsum.photos/seed/156/600',
                                                    ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.15, -0.91),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(55, 0, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child:
                                                                RollMoreWidget(
                                                              rollID:
                                                                  rowRollsRecord,
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.more_vert,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Text(
                                      rowRollsRecord.rollName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            fontSize: 12,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: StreamBuilder<List<PostsRecord>>(
                  stream: queryPostsRecord(
                    queryBuilder: (postsRecord) => postsRecord
                        .where('user_post', isEqualTo: currentUserReference),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<PostsRecord> gridViewPostsRecordList = snapshot.data;
                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 9,
                        childAspectRatio: 1,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: gridViewPostsRecordList.length,
                      itemBuilder: (context, gridViewIndex) {
                        final gridViewPostsRecord =
                            gridViewPostsRecordList[gridViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductPageWidget(
                                    productView: gridViewPostsRecord,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final postImages = (gridViewPostsRecord
                                                  .postImages
                                                  .toList()
                                                  ?.toList() ??
                                              [])
                                          .take(1)
                                          .toList();
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children:
                                            List.generate(postImages.length,
                                                (postImagesIndex) {
                                          final postImagesItem =
                                              postImages[postImagesIndex];
                                          return Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(15),
                                                  topRight: Radius.circular(15),
                                                ),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    postImagesItem,
                                                    'https://picsum.photos/seed/581/600',
                                                  ),
                                                  width: double.infinity,
                                                  height: 130,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.03, -0.94),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: PostMoreWidget(
                                                            postID:
                                                                gridViewPostsRecord,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.more_vert_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 35,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 3, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.25, 0.62),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 0),
                                            child: Text(
                                              functions.charLimit22(
                                                  gridViewPostsRecord
                                                      .postContent),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.25, 0.62),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 0),
                                            child: Text(
                                              functions.formatPrice(
                                                  gridViewPostsRecord
                                                      .postPrice),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 17,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
