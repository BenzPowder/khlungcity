import '../backend/api_requests/api_calls.dart';
import '../components/activity_comp_widget.dart';
import '../components/top_nav_v2_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityWidget extends StatefulWidget {
  const ActivityWidget({Key? key}) : super(key: key);

  @override
  _ActivityWidgetState createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: ActivityCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingFour(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final activityActivityResponse = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TopNavV2Widget(
                  bgOne: FlutterFlowTheme.of(context).primaryBackground,
                  bgTwo: FlutterFlowTheme.of(context).primaryBackground,
                  bgThree: FlutterFlowTheme.of(context).primaryBackground,
                  bgFour: FlutterFlowTheme.of(context).lineColor,
                  bgFive: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                          maxWidth: 1170,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 0, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'e16rf6ka' /* สวัสดีผู้เยี่ยมชม : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Prompt',
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 0),
                                      child: Text(
                                        dateTimeFormat(
                                          'MMMEd',
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 20, 16, 40),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 12),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'vm6csqor' /* กิจกรรมของหน่วยงาน */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Prompt',
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3Family),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 12),
                                          child: Builder(
                                            builder: (context) {
                                              final urlDetail = getJsonField(
                                                activityActivityResponse
                                                    .jsonBody,
                                                r'''$''',
                                              ).toList();
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: urlDetail.length,
                                                itemBuilder:
                                                    (context, urlDetailIndex) {
                                                  final urlDetailItem =
                                                      urlDetail[urlDetailIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 0, 16, 1),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          barrierColor:
                                                              Color(0x00EDECE5),
                                                          context: context,
                                                          builder: (context) {
                                                            return Padding(
                                                              padding: MediaQuery
                                                                      .of(context)
                                                                  .viewInsets,
                                                              child: Container(
                                                                height: double
                                                                    .infinity,
                                                                child:
                                                                    ActivityCompWidget(
                                                                  urlDetail:
                                                                      getJsonField(
                                                                    urlDetailItem,
                                                                    r'''$.urlDetail''',
                                                                  ).toString(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                              offset:
                                                                  Offset(0, 1),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            12,
                                                                            12,
                                                                            12),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16),
                                                                  child: Image
                                                                      .network(
                                                                    getJsonField(
                                                                      urlDetailItem,
                                                                      r'''$.pic''',
                                                                    ),
                                                                    width: 100,
                                                                    height: 100,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            20,
                                                                            0,
                                                                            8),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                    ))
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16,
                                                                            4,
                                                                            16,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            urlDetailItem,
                                                                            r'''$.topicName''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title3
                                                                              .override(
                                                                                fontFamily: 'Prompt',
                                                                                fontWeight: FontWeight.bold,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title3Family),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      tablet:
                                                                          false,
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16,
                                                                            4,
                                                                            16,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            urlDetailItem,
                                                                            r'''$.topicName''',
                                                                          ).toString().maybeHandleOverflow(
                                                                                maxChars: 30,
                                                                                replacement: '…',
                                                                              ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title3
                                                                              .override(
                                                                                fontFamily: 'Prompt',
                                                                                fontWeight: FontWeight.bold,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title3Family),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                      Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                            width:
                                                                                1,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(16),
                                                                              child: Image.network(
                                                                                getJsonField(
                                                                                  urlDetailItem,
                                                                                  r'''$.pic''',
                                                                                ),
                                                                                width: 100,
                                                                                height: 100,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'gf44clbe' /* คลิกดูรายละเอียด */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).title3.override(
                                                                                            fontFamily: 'Prompt',
                                                                                            color: FlutterFlowTheme.of(context).primaryColor,
                                                                                            fontSize: 16,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title3Family),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'vbct20xl' /* คลิกเพื่อดูรายละเอียด */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Prompt',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          16,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyText1Family),
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
