import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../chatroom/chatroom_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../product_page/product_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWishlistWidget extends StatefulWidget {
  const MyWishlistWidget({Key key}) : super(key: key);

  @override
  _MyWishlistWidgetState createState() => _MyWishlistWidgetState();
}

class _MyWishlistWidgetState extends State<MyWishlistWidget> {
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
            'd5csjxaw' /* My Wishlist */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).tertiaryColor,
                fontSize: 16,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: StreamBuilder<List<PostsRecord>>(
          stream: queryPostsRecord(
            queryBuilder: (postsRecord) => postsRecord.where('user_favorite',
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: 130,
                          height: 105,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Builder(
                            builder: (context) {
                              final wishImages = (gridViewPostsRecord.postImages
                                          .toList()
                                          ?.toList() ??
                                      [])
                                  .take(1)
                                  .toList();
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(wishImages.length,
                                    (wishImagesIndex) {
                                  final wishImagesItem =
                                      wishImages[wishImagesIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 7, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3),
                                      child: CachedNetworkImage(
                                        imageUrl: valueOrDefault<String>(
                                          wishImagesItem,
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
                        padding: EdgeInsetsDirectional.fromSTEB(30, 2, 40, 0),
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
                              children: [
                                Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: ToggleIcon(
                                        onPressed: () async {
                                          final userFavoriteElement =
                                              currentUserReference;
                                          final userFavoriteUpdate =
                                              gridViewPostsRecord
                                                      .userFavorite
                                                      .toList()
                                                      .contains(
                                                          userFavoriteElement)
                                                  ? FieldValue.arrayRemove(
                                                      [userFavoriteElement])
                                                  : FieldValue.arrayUnion(
                                                      [userFavoriteElement]);
                                          final postsUpdateData = {
                                            'user_favorite': userFavoriteUpdate,
                                          };
                                          await gridViewPostsRecord.reference
                                              .update(postsUpdateData);
                                        },
                                        value: gridViewPostsRecord.userFavorite
                                            .toList()
                                            .contains(currentUserReference),
                                        onIcon: Icon(
                                          Icons.favorite_sharp,
                                          color: Color(0xFFBF1717),
                                          size: 25,
                                        ),
                                        offIcon: Icon(
                                          Icons.favorite_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ToggleIcon(
                                  onPressed: () async {
                                    setState(
                                      () => FFAppState().rollCart.contains(
                                              gridViewPostsRecord.reference)
                                          ? FFAppState().rollCart.remove(
                                              gridViewPostsRecord.reference)
                                          : FFAppState().rollCart.add(
                                              gridViewPostsRecord.reference),
                                    );
                                  },
                                  value: FFAppState()
                                      .rollCart
                                      .contains(gridViewPostsRecord.reference),
                                  onIcon: Icon(
                                    Icons.shopping_cart,
                                    color: Color(0xFFBF1717),
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.shopping_cart,
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    size: 25,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await SendEnquireCall.call(
                                        phoneNumber: rowUsersRecord.phoneNumber,
                                        receiverName:
                                            rowUsersRecord.displayName,
                                        enquireBody:
                                            gridViewPostsRecord.postContent,
                                        senderName: currentUserDisplayName,
                                      );
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ChatroomWidget(
                                            chatUser: rowUsersRecord,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.chat_bubble_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      size: 20,
                                    ),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                functions
                                    .formatPrice(gridViewPostsRecord.postPrice),
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
      ),
    );
  }
}
