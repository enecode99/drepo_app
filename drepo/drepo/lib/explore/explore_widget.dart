import '../add_businesses_page/add_businesses_page_widget.dart';
import '../allchatrooms/allchatrooms_widget.dart';
import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../business_account/business_account_widget.dart';
import '../businesses_page/businesses_page_widget.dart';
import '../chatroom/chatroom_widget.dart';
import '../components/create_rollpost_widget.dart';
import '../components/post_pay_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../my_cart/my_cart_widget.dart';
import '../my_wishlist/my_wishlist_widget.dart';
import '../notifications/notifications_widget.dart';
import '../polices/polices_widget.dart';
import '../product_page/product_page_widget.dart';
import '../sign_in/sign_in_widget.dart';
import '../view_roll/view_roll_widget.dart';
import '../wallet/wallet_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({Key key}) : super(key: key);

  @override
  _ExploreWidgetState createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            '4ui9ak9p' /* Drepo Products */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).tertiaryColor,
                fontSize: 16,
              ),
        ),
        actions: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 10, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationsWidget(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.notifications,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible:
                (valueOrDefault(currentUserDocument?.businessAccount, false)) ==
                    true,
            child: AuthUserStreamWidget(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 18, 0),
                    child: InkWell(
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: CreateRollpostWidget(),
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.add_circle,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      drawer: Drawer(
        elevation: 16,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 304,
                    height: 180,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-0.7, 0),
                                      child: AuthUserStreamWidget(
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              currentUserPhoto,
                                              'https://picsum.photos/seed/676/600',
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    AuthUserStreamWidget(
                                      child: Text(
                                        currentUserDisplayName,
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  currentUserEmail,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFFEE8B60),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 150, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'Home'),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.home,
                                  color: Color(0xFF1E0A3D),
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '38mwqkxq' /* Drepo Store */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 130, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'Explore'),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.search,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'rqsqiy0n' /* Drepo Products */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 150, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllchatroomsWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.chat_rounded,
                                  color: Color(0xFF1E0A3D),
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'uav9ewvc' /* My Chats */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 180, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BusinessesPageWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.person_search,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '4gbeqw8k' /* Businesses */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 180, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyCartWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.shopping_cart_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'i744xedj' /* My Cart */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 150, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyWishlistWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.favorite_sharp,
                                  color: Color(0xFF1E0A3D),
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'tbrraez3' /* My Wishlist */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 160, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WalletWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.account_balance_wallet_rounded,
                                  color: Color(0xFF1E0A3D),
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1ljyfte3' /* My Wallet  */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 140, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationsWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.notifications,
                                  color: Color(0xFF1E0A3D),
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ambhh3at' /* Notifications */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 160, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PolicesWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.policy,
                                  color: Color(0xFF1E0A3D),
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '9v4wx0i1' /* Policies */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 140, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddBusinessesPageWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Color(0xFF1E0A3D),
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'fqhlkwwa' /* Add Business */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await signOut();
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInWidget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'oghjsn3e' /* SignOut */,
                        ),
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.of(context).secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: StreamBuilder<List<RollsRecord>>(
                  stream: queryRollsRecord(),
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
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3, 3, 3, 3),
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
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                  Text(
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
            ),
            StreamBuilder<List<PostsRecord>>(
              stream: queryPostsRecord(),
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
                List<PostsRecord> columnPostsRecordList = snapshot.data;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnPostsRecordList.length,
                      (columnIndex) {
                    final columnPostsRecord =
                        columnPostsRecordList[columnIndex];
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPageWidget(
                                productView: columnPostsRecord,
                              ),
                            ),
                          );
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 490,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: StreamBuilder<UsersRecord>(
                              stream: UsersRecord.getDocument(
                                  columnPostsRecord.userPost),
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
                                final stackUsersRecord = snapshot.data;
                                return Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 4.41),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 100, 0, 0),
                                        child: Builder(
                                          builder: (context) {
                                            final expImages = (columnPostsRecord
                                                        .postImages
                                                        .toList()
                                                        ?.toList() ??
                                                    [])
                                                .take(1)
                                                .toList();
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  expImages.length,
                                                  (expImagesIndex) {
                                                final expImagesItem =
                                                    expImages[expImagesIndex];
                                                return Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.27),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          child:
                                                              FlutterFlowExpandedImageView(
                                                            image:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                expImagesItem,
                                                                'https://picsum.photos/seed/767/600',
                                                              ),
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                                false,
                                                            tag: valueOrDefault<
                                                                String>(
                                                              expImagesItem,
                                                              'https://picsum.photos/seed/767/600' +
                                                                  '$expImagesIndex',
                                                            ),
                                                            useHeroAnimation:
                                                                true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: valueOrDefault<
                                                          String>(
                                                        expImagesItem,
                                                        'https://picsum.photos/seed/767/600' +
                                                            '$expImagesIndex',
                                                      ),
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            expImagesItem,
                                                            'https://picsum.photos/seed/767/600',
                                                          ),
                                                          width:
                                                              double.infinity,
                                                          height: 325,
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.89, 0.97),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 0, 0, 0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            width: 130,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    functions.formatPrice(
                                                        columnPostsRecord
                                                            .postPrice),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.11, 0.95),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 5, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ChatroomWidget(
                                                  chatUser: stackUsersRecord,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.chat,
                                            color: Colors.black,
                                            size: 34,
                                          ),
                                        ),
                                      ),
                                    ),
                                    if ((currentUserReference) !=
                                        (columnPostsRecord.userPost))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.66, -0.48),
                                        child: InkWell(
                                          onTap: () async {
                                            triggerPushNotification(
                                              notificationTitle: 'New Cart!!',
                                              notificationText:
                                                  functions.cartNotification(
                                                      currentUserDisplayName),
                                              notificationSound: 'default',
                                              userRefs: [
                                                stackUsersRecord.reference
                                              ],
                                              initialPageName: 'Notifications',
                                              parameterData: {},
                                            );

                                            final notificationsCreateData = {
                                              ...createNotificationsRecordData(
                                                notificationType: 'cart',
                                                notificationTime:
                                                    getCurrentTimestamp,
                                                notificationDetails:
                                                    functions.cartNotification(
                                                        currentUserDisplayName),
                                                notificationSender:
                                                    currentUserReference,
                                              ),
                                              'receiver_users': [
                                                stackUsersRecord.reference
                                              ],
                                            };
                                            await NotificationsRecord.collection
                                                .doc()
                                                .set(notificationsCreateData);
                                          },
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: ToggleIcon(
                                              onPressed: () async {
                                                final userCartElement =
                                                    currentUserReference;
                                                final userCartUpdate =
                                                    columnPostsRecord
                                                            .userCart
                                                            .toList()
                                                            .contains(
                                                                userCartElement)
                                                        ? FieldValue
                                                            .arrayRemove([
                                                            userCartElement
                                                          ])
                                                        : FieldValue.arrayUnion(
                                                            [userCartElement]);
                                                final postsUpdateData = {
                                                  'user_cart': userCartUpdate,
                                                };
                                                await columnPostsRecord
                                                    .reference
                                                    .update(postsUpdateData);
                                              },
                                              value: columnPostsRecord.userCart
                                                  .toList()
                                                  .contains(
                                                      currentUserReference),
                                              onIcon: Icon(
                                                Icons.shopping_cart,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 30,
                                              ),
                                              offIcon: Icon(
                                                Icons.shopping_cart,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.22, -0.93),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        BusinessAccountWidget(
                                                      businessAcount:
                                                          stackUsersRecord,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    stackUsersRecord.photoUrl,
                                                    'https://picsum.photos/seed/124/600',
                                                  ),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                stackUsersRecord.displayName,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if ((currentUserReference) !=
                                        (columnPostsRecord.userPost))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.85, 0.96),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 20, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                    child: PostPayWidget(
                                                      productPrice:
                                                          columnPostsRecord,
                                                    ),
                                                  );
                                                },
                                              );
                                              await SendEnquireCall.call(
                                                phoneNumber: stackUsersRecord
                                                    .phoneNumber,
                                                receiverName: stackUsersRecord
                                                    .displayName,
                                                senderName:
                                                    currentUserDisplayName,
                                                enquireBody: columnPostsRecord
                                                    .postContent,
                                              );
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'a4vs9glo' /* Enquire */,
                                            ),
                                            icon: Icon(
                                              Icons.sms_failed_sharp,
                                              size: 15,
                                            ),
                                            options: FFButtonOptions(
                                              width: 108,
                                              height: 35,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                      ),
                                              elevation: 3,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -0.71),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 8, 3, 0),
                                          child: Text(
                                            functions.charLimit88(
                                                columnPostsRecord.postContent),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    if ((currentUserReference) !=
                                        (columnPostsRecord.userPost))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.97, -0.47),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              triggerPushNotification(
                                                notificationTitle:
                                                    'New Wishlist!!',
                                                notificationText: functions
                                                    .wishlistRollNotification(
                                                        currentUserDisplayName),
                                                notificationSound: 'default',
                                                userRefs: [
                                                  stackUsersRecord.reference
                                                ],
                                                initialPageName:
                                                    'Notifications',
                                                parameterData: {},
                                              );

                                              final notificationsCreateData = {
                                                ...createNotificationsRecordData(
                                                  notificationType: 'wishlist',
                                                  notificationTime:
                                                      getCurrentTimestamp,
                                                  notificationDetails: functions
                                                      .wishlistRollNotification(
                                                          currentUserDisplayName),
                                                  notificationSender:
                                                      currentUserReference,
                                                ),
                                                'receiver_users': [
                                                  stackUsersRecord.reference
                                                ],
                                              };
                                              await NotificationsRecord
                                                  .collection
                                                  .doc()
                                                  .set(notificationsCreateData);
                                            },
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: ToggleIcon(
                                                onPressed: () async {
                                                  final userFavoriteElement =
                                                      currentUserReference;
                                                  final userFavoriteUpdate =
                                                      columnPostsRecord
                                                              .userFavorite
                                                              .toList()
                                                              .contains(
                                                                  userFavoriteElement)
                                                          ? FieldValue
                                                              .arrayRemove([
                                                              userFavoriteElement
                                                            ])
                                                          : FieldValue
                                                              .arrayUnion([
                                                              userFavoriteElement
                                                            ]);
                                                  final postsUpdateData = {
                                                    'user_favorite':
                                                        userFavoriteUpdate,
                                                  };
                                                  await columnPostsRecord
                                                      .reference
                                                      .update(postsUpdateData);
                                                },
                                                value: columnPostsRecord
                                                    .userFavorite
                                                    .toList()
                                                    .contains(
                                                        currentUserReference),
                                                onIcon: Icon(
                                                  Icons.favorite,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 30,
                                                ),
                                                offIcon: Icon(
                                                  Icons.favorite,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryColor,
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
