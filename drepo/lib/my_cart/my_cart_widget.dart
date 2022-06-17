import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/drepo_pay_cart_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../product_page/product_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartWidget extends StatefulWidget {
  const MyCartWidget({Key key}) : super(key: key);

  @override
  _MyCartWidgetState createState() => _MyCartWidgetState();
}

class _MyCartWidgetState extends State<MyCartWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
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
            'lmya20xo' /* My Cart */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).tertiaryColor,
                fontSize: 18,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            StreamBuilder<List<PostsRecord>>(
              stream: queryPostsRecord(
                queryBuilder: (postsRecord) => postsRecord.where('user_cart',
                    arrayContains: currentUserReference),
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
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: gridViewPostsRecordList.length,
                  itemBuilder: (context, gridViewIndex) {
                    final gridViewPostsRecord =
                        gridViewPostsRecordList[gridViewIndex];
                    return InkWell(
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Container(
                              width: 130,
                              height: 105,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Builder(
                                builder: (context) {
                                  final cartImages = (gridViewPostsRecord
                                              .postImages
                                              .toList()
                                              ?.toList() ??
                                          [])
                                      .take(1)
                                      .toList();
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(cartImages.length,
                                        (cartImagesIndex) {
                                      final cartImagesItem =
                                          cartImages[cartImagesIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 7, 0, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          child: CachedNetworkImage(
                                            imageUrl: valueOrDefault<String>(
                                              cartImagesItem,
                                              'https://picsum.photos/seed/429/600',
                                            ),
                                            width: 120,
                                            height: 90,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 2, 40, 0),
                            child: StreamBuilder<UsersRecord>(
                              stream: UsersRecord.getDocument(
                                  gridViewPostsRecord.userPost),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final rowUsersRecord = snapshot.data;
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        if ((gridViewPostsRecord.postQuantity) >
                                            1) {
                                          final postsUpdateData =
                                              createPostsRecordData(
                                            postQuantity:
                                                functions.decrementCart(
                                                    gridViewPostsRecord
                                                        .postQuantity),
                                            cartTotal: functions.totalCart(
                                                gridViewPostsRecord
                                                    .postQuantity,
                                                gridViewPostsRecord.cartTotal),
                                          );
                                          await gridViewPostsRecord.reference
                                              .update(postsUpdateData);
                                        } else {
                                          return;
                                        }
                                      },
                                      child: Icon(
                                        Icons.remove_circle,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        size: 30,
                                      ),
                                    ),
                                    Text(
                                      gridViewPostsRecord.postQuantity
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                          ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        final postsUpdateData =
                                            createPostsRecordData(
                                          postQuantity: functions.incrementCart(
                                              gridViewPostsRecord.postQuantity),
                                          cartTotal: functions.totalCart(
                                              gridViewPostsRecord.postQuantity,
                                              gridViewPostsRecord.postPrice),
                                        );
                                        await gridViewPostsRecord.reference
                                            .update(postsUpdateData);
                                      },
                                      child: Icon(
                                        Icons.add_circle,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Container(
                            width: 130,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    gridViewPostsRecord.postContent,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    functions.formatPrice(
                                        gridViewPostsRecord.cartTotal),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            Align(
              alignment: AlignmentDirectional(0.04, 0.27),
              child: InkWell(
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: DrepoPayCartWidget(),
                      );
                    },
                  );
                },
                child: Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StreamBuilder<List<PostsRecord>>(
                        stream: queryPostsRecord(
                          queryBuilder: (postsRecord) => postsRecord.where(
                              'user_cart',
                              arrayContains: currentUserReference),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<PostsRecord> textPostsRecordList = snapshot.data;
                          return Text(
                            functions.formatPrice(functions.addCart(
                                textPostsRecordList
                                    .map((e) => e.cartTotal)
                                    .toList())),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
