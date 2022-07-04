import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../product_page/product_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class ElectronicsWidget extends StatefulWidget {
  const ElectronicsWidget({Key key}) : super(key: key);

  @override
  _ElectronicsWidgetState createState() => _ElectronicsWidgetState();
}

class _ElectronicsWidgetState extends State<ElectronicsWidget> {
  List<PostsRecord> simpleSearchResults = [];
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

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
            'us1j15aa' /* Electronics */,
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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryColor,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFE7E1EA),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFFE7E1EA),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                              child: InkWell(
                                onTap: () async {
                                  await queryPostsRecordOnce()
                                      .then(
                                        (records) => simpleSearchResults =
                                            TextSearch(
                                          records
                                              .map(
                                                (record) => TextSearchItem(
                                                    record,
                                                    [record.postContent]),
                                              )
                                              .toList(),
                                        )
                                                .search(textController.text)
                                                .map((r) => r.object)
                                                .toList(),
                                      )
                                      .onError(
                                          (_, __) => simpleSearchResults = [])
                                      .whenComplete(() => setState(() {}));
                                },
                                child: Icon(
                                  Icons.search_rounded,
                                  color: Color(0xFF95A1AC),
                                  size: 24,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      '8ujdtuc8' /* Search events here... */,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                child: StreamBuilder<List<PostsRecord>>(
                  stream: queryPostsRecord(
                    queryBuilder: (postsRecord) => postsRecord
                        .where('post_category', isEqualTo: 'Electronics'),
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
                      primary: false,
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
                                      return Stack(
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
                                              if (!((currentUserDocument
                                                              ?.userPosts
                                                              ?.toList() ??
                                                          [])
                                                      .contains(
                                                          gridViewPostsRecord
                                                              .reference)) ??
                                                  true)
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1, -0.48),
                                                  child: AuthUserStreamWidget(
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: ToggleIcon(
                                                        onPressed: () async {
                                                          final userCartElement =
                                                              currentUserReference;
                                                          final userCartUpdate =
                                                              gridViewPostsRecord
                                                                      .userCart
                                                                      .toList()
                                                                      .contains(
                                                                          userCartElement)
                                                                  ? FieldValue
                                                                      .arrayRemove([
                                                                      userCartElement
                                                                    ])
                                                                  : FieldValue
                                                                      .arrayUnion([
                                                                      userCartElement
                                                                    ]);
                                                          final postsUpdateData =
                                                              {
                                                            'user_cart':
                                                                userCartUpdate,
                                                          };
                                                          await gridViewPostsRecord
                                                              .reference
                                                              .update(
                                                                  postsUpdateData);
                                                        },
                                                        value: gridViewPostsRecord
                                                            .userCart
                                                            .toList()
                                                            .contains(
                                                                currentUserReference),
                                                        onIcon: Icon(
                                                          Icons.shopping_cart,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          size: 20,
                                                        ),
                                                        offIcon: Icon(
                                                          Icons.shopping_cart,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          size: 20,
                                                        ),
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
                                        0, 3, 0, 5),
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
                                                            Color(0xFF1C1B26),
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
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
                                                gridViewPostsRecord.postPrice),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 17,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
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
