import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'myevents_model.dart';
export 'myevents_model.dart';

class MyeventsWidget extends StatefulWidget {
  const MyeventsWidget({super.key});

  @override
  State<MyeventsWidget> createState() => _MyeventsWidgetState();
}

class _MyeventsWidgetState extends State<MyeventsWidget> {
  late MyeventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyeventsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.initialDate = getCurrentTimestamp;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFFAFAFA),
        body: SafeArea(
          top: true,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/Homepage.png',
                ).image,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 97.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35.0),
                        bottomRight: Radius.circular(35.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              14.0, 0.0, 14.0, 30.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/Icon_(1).png',
                                    width: 18.0,
                                    height: 18.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'My Events',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'sf pro',
                                      letterSpacing: 1.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Container(
                                width: 20.0,
                                height: 20.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/Icon_(2).png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90.0,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F2F3),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.isPendingSelected = true;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            width: 190.0,
                                            height: 36.0,
                                            decoration: BoxDecoration(
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFFE7B9CB),
                                                  Color(0xFFD1CCDD)
                                                ],
                                                stops: [0.0, 1.0],
                                                begin: AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Upcoming',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'sf pro',
                                                          color:
                                                              const Color(0xFF141558),
                                                          letterSpacing: 1.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.isPendingSelected = false;
                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: 190.0,
                                        height: 36.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Past',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'sf pro',
                                                  color: const Color(0xFF141558),
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
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
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Visibility(
                                      visible: _model.isPendingSelected == true,
                                      child: StreamBuilder<List<TasksRecord>>(
                                        stream: queryTasksRecord(
                                          queryBuilder: (tasksRecord) =>
                                              tasksRecord
                                                  .where(
                                                    'isFinished',
                                                    isEqualTo: true,
                                                  )
                                                  .orderBy('taskDate'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<TasksRecord>
                                              listViewTasksRecordList =
                                              snapshot.data!;

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewTasksRecordList.length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewTasksRecord =
                                                  listViewTasksRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        14.0, 14.0, 0.0, 14.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          dateTimeFormat(
                                                            "Hm",
                                                            listViewTasksRecord
                                                                .startTime!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'sf pro',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              "a",
                                                              listViewTasksRecord
                                                                  .startTime!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'sf pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              "Hm",
                                                              listViewTasksRecord
                                                                  .endTime!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'sf pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          dateTimeFormat(
                                                            "a",
                                                            listViewTasksRecord
                                                                .startTime!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'sf pro',
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 5.0)),
                                                    ),
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    0.0,
                                                                    14.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFB8B5EF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        17.0,
                                                                        19.0,
                                                                        17.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/Icon_(6).png',
                                                                            width:
                                                                                36.0,
                                                                            height:
                                                                                36.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                14.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  listViewTasksRecord.taskName,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'sf pro',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 1.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Opacity(
                                                                                      opacity: 0.8,
                                                                                      child: Text(
                                                                                        dateTimeFormat(
                                                                                          "Hm",
                                                                                          listViewTasksRecord.startTime!,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sf pro',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 1.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Opacity(
                                                                                      opacity: 0.8,
                                                                                      child: Text(
                                                                                        '-',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sf pro',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 1.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Opacity(
                                                                                      opacity: 0.8,
                                                                                      child: Text(
                                                                                        dateTimeFormat(
                                                                                          "Hm",
                                                                                          listViewTasksRecord.endTime!,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sf pro',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 1.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 5.0)),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 7.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.end,
                                                                          children: [
                                                                            if (listViewTasksRecord.isFinished ==
                                                                                false)
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  'https://cdn-icons-png.flaticon.com/512/3756/3756719.png',
                                                                                  width: 24.0,
                                                                                  height: 24.0,
                                                                                  fit: BoxFit.cover,
                                                                                  alignment: const Alignment(1.0, 0.0),
                                                                                ),
                                                                              ),
                                                                            if (listViewTasksRecord.isFinished ==
                                                                                true)
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  'https://cdn-icons-png.flaticon.com/128/8832/8832138.png',
                                                                                  width: 24.0,
                                                                                  height: 24.0,
                                                                                  fit: BoxFit.cover,
                                                                                  alignment: const Alignment(1.0, 0.0),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Opacity(
                                                                opacity: 0.2,
                                                                child: SizedBox(
                                                                  width: 270.0,
                                                                  child:
                                                                      Divider(
                                                                    thickness:
                                                                        2.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        0.0,
                                                                        14.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          listViewTasksRecord
                                                                              .location,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'sf pro',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                letterSpacing: 1.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, -1.0),
                                                                              child: Container(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  'https://picsum.photos/seed/640/600',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
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
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Visibility(
                                      visible: _model.isPendingSelected == true,
                                      child: StreamBuilder<List<TasksRecord>>(
                                        stream: queryTasksRecord(
                                          queryBuilder: (tasksRecord) =>
                                              tasksRecord
                                                  .where(
                                                    'isFinished',
                                                    isEqualTo: false,
                                                  )
                                                  .orderBy('taskDate'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<TasksRecord>
                                              listViewTasksRecordList =
                                              snapshot.data!;

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewTasksRecordList.length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewTasksRecord =
                                                  listViewTasksRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        14.0, 14.0, 0.0, 14.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          dateTimeFormat(
                                                            "Hm",
                                                            listViewTasksRecord
                                                                .startTime!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'sf pro',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              "a",
                                                              listViewTasksRecord
                                                                  .startTime!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'sf pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              "Hm",
                                                              listViewTasksRecord
                                                                  .endTime!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'sf pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          dateTimeFormat(
                                                            "a",
                                                            listViewTasksRecord
                                                                .startTime!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'sf pro',
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 5.0)),
                                                    ),
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    0.0,
                                                                    14.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFB8B5EF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        17.0,
                                                                        19.0,
                                                                        17.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/Icon_(6).png',
                                                                            width:
                                                                                36.0,
                                                                            height:
                                                                                36.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                14.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  listViewTasksRecord.taskName,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'sf pro',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 1.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Opacity(
                                                                                      opacity: 0.8,
                                                                                      child: Text(
                                                                                        dateTimeFormat(
                                                                                          "Hm",
                                                                                          listViewTasksRecord.startTime!,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sf pro',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 1.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Opacity(
                                                                                      opacity: 0.8,
                                                                                      child: Text(
                                                                                        '-',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sf pro',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 1.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Opacity(
                                                                                      opacity: 0.8,
                                                                                      child: Text(
                                                                                        dateTimeFormat(
                                                                                          "Hm",
                                                                                          listViewTasksRecord.endTime!,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sf pro',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 1.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 5.0)),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 7.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.end,
                                                                          children: [
                                                                            if (listViewTasksRecord.isFinished ==
                                                                                false)
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  'https://cdn-icons-png.flaticon.com/512/3756/3756719.png',
                                                                                  width: 24.0,
                                                                                  height: 24.0,
                                                                                  fit: BoxFit.cover,
                                                                                  alignment: const Alignment(1.0, 0.0),
                                                                                ),
                                                                              ),
                                                                            if (listViewTasksRecord.isFinished ==
                                                                                true)
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  'https://cdn-icons-png.flaticon.com/128/8832/8832138.png',
                                                                                  width: 24.0,
                                                                                  height: 24.0,
                                                                                  fit: BoxFit.cover,
                                                                                  alignment: const Alignment(1.0, 0.0),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Opacity(
                                                                opacity: 0.2,
                                                                child: SizedBox(
                                                                  width: 270.0,
                                                                  child:
                                                                      Divider(
                                                                    thickness:
                                                                        2.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        0.0,
                                                                        14.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          listViewTasksRecord
                                                                              .location,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'sf pro',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                letterSpacing: 1.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, -1.0),
                                                                              child: Container(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  'https://picsum.photos/seed/640/600',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
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
                                  ),
                                ],
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
          ),
        ),
      ),
    );
  }
}
