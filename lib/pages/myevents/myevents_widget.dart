import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/cust_navbar_widget.dart';
import '/components/empty_widgetupcoming_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFFAFAFA),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/calender.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 97.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Opacity(
                                    opacity: 0.0,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Icon_(1).png',
                                          width: 18.0,
                                          height: 18.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'My Events',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'sf pro bold 700',
                                          letterSpacing: 1.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('sf pro bold 700'),
                                        ),
                                  ),
                                  Opacity(
                                    opacity: 0.0,
                                    child: Container(
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
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            14.0, 0.0, 14.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF0F2F3),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.isPendingSelected = true;
                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                height: 36.0,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      valueOrDefault<Color>(
                                                        _model.isPendingSelected
                                                            ? FFAppState()
                                                                .gradient1
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                      valueOrDefault<Color>(
                                                        _model.isPendingSelected
                                                            ? FFAppState()
                                                                .gradient2
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      )
                                                    ],
                                                    stops: const [0.0, 1.0],
                                                    begin: const AlignmentDirectional(
                                                        0.0, -1.0),
                                                    end: const AlignmentDirectional(
                                                        0, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Upcoming',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'sf pro medium 500',
                                                          color:
                                                              const Color(0xFF141558),
                                                          fontSize: 14.0,
                                                          letterSpacing: 1.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'sf pro medium 500'),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.isPendingSelected = false;
                                              safeSetState(() {});
                                            },
                                            child: Container(
                                              height: 36.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    valueOrDefault<Color>(
                                                      !_model.isPendingSelected
                                                          ? FFAppState()
                                                              .gradient1
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                    valueOrDefault<Color>(
                                                      !_model.isPendingSelected
                                                          ? FFAppState()
                                                              .gradient2
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    )
                                                  ],
                                                  stops: const [0.0, 1.0],
                                                  begin: const AlignmentDirectional(
                                                      0.0, -1.0),
                                                  end: const AlignmentDirectional(
                                                      0, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Past',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'sf pro medium 500',
                                                        color:
                                                            const Color(0xFF141558),
                                                        fontSize: 14.0,
                                                        letterSpacing: 1.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'sf pro medium 500'),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 5.0)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 70.0),
                              child: Container(
                                height: 597.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 15.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        if (_model.isPendingSelected == true)
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<TasksRecord>>(
                                              stream: queryTasksRecord(
                                                queryBuilder: (tasksRecord) =>
                                                    tasksRecord
                                                        .where(
                                                          'isFinished',
                                                          isEqualTo: false,
                                                        )
                                                        .where(
                                                          'uid',
                                                          isEqualTo:
                                                              currentUserReference,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<TasksRecord>
                                                    upcomingTasksRecordList =
                                                    snapshot.data!;
                                                if (upcomingTasksRecordList
                                                    .isEmpty) {
                                                  return const EmptyWidgetupcomingWidget();
                                                }

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: List.generate(
                                                      upcomingTasksRecordList
                                                          .length,
                                                      (upcomingIndex) {
                                                    final upcomingTasksRecord =
                                                        upcomingTasksRecordList[
                                                            upcomingIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  14.0,
                                                                  0.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 70.0,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        dateTimeFormat(
                                                                          "h:mm",
                                                                          upcomingTasksRecord
                                                                              .startTime,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                        'NA',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'sf pro medium 500',
                                                                            color:
                                                                                const Color(0xFF462FD0),
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey('sf pro medium 500'),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      dateTimeFormat(
                                                                        "a",
                                                                        upcomingTasksRecord
                                                                            .startTime,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'sf pro normal 400',
                                                                          color:
                                                                              const Color(0xFFA5ACAD),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('sf pro normal 400'),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
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
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            14.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    upcomingTasksRecord.icon,
                                                                                    'https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/Untitled%20design.png?alt=media&token=6cef9d5f-86ef-4022-9f08-4ab26bf89d23',
                                                                                  ),
                                                                                  width: 38.0,
                                                                                  height: 38.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 143.0,
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 150.0,
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: Text(
                                                                                            valueOrDefault<String>(
                                                                                              upcomingTasksRecord.taskName,
                                                                                              'NA',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'sf pro bold 700',
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  letterSpacing: 1.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro bold 700'),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  dateTimeFormat(
                                                                                                    "jm",
                                                                                                    upcomingTasksRecord.startTime,
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'sf pro bold 700',
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 1.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro bold 700'),
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(const SizedBox(width: 5.0)),
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
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                24.0,
                                                                            height:
                                                                                24.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                              border: Border.all(
                                                                                color: const Color(0xFF5DD9C1),
                                                                                width: 1.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Icon(
                                                                                FFIcons.kkprogressAlert,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                size: 20.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Opacity(
                                                                    opacity:
                                                                        0.2,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (upcomingTasksRecord
                                                                          .isPriority ==
                                                                      true)
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Priority task',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: const Color(0x82FF5963),
                                                                                letterSpacing: 1.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              100.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.location_pin,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              size: 24.0,
                                                                            ),
                                                                            Container(
                                                                              width: 135.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  upcomingTasksRecord.location,
                                                                                  'NA',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 1.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 5.0)),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  dateTimeFormat(
                                                                                    "yMMMd",
                                                                                    upcomingTasksRecord.taskDate,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'sf pro normal 400',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 1.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro normal 400'),
                                                                                    ),
                                                                              ),
                                                                              if (upcomingTasksRecord.addedMembers.isNotEmpty)
                                                                                Expanded(
                                                                                  child: StreamBuilder<List<UserRecord>>(
                                                                                    stream: queryUserRecord(
                                                                                      queryBuilder: (userRecord) => userRecord.whereIn('uid', upcomingTasksRecord.addedMembers.map((e) => e.id).toList()),
                                                                                    ),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).primary,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      List<UserRecord> rowUserRecordList = snapshot.data!;

                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: List.generate(rowUserRecordList.length, (rowIndex) {
                                                                                          final rowUserRecord = rowUserRecordList[rowIndex];
                                                                                          return Align(
                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 25.0,
                                                                                              height: 25.0,
                                                                                              clipBehavior: Clip.antiAlias,
                                                                                              decoration: const BoxDecoration(
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: Image.network(
                                                                                                rowUserRecord.photoUrl,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }).divide(
                                                      const SizedBox(height: 15.0)),
                                                );
                                              },
                                            ),
                                          ),
                                        if (_model.isPendingSelected == false)
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<TasksRecord>>(
                                              stream: queryTasksRecord(
                                                queryBuilder: (tasksRecord) =>
                                                    tasksRecord
                                                        .where(
                                                          'isFinished',
                                                          isEqualTo: true,
                                                        )
                                                        .where(
                                                          'uid',
                                                          isEqualTo:
                                                              currentUserReference,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<TasksRecord>
                                                    pastupcomingTasksRecordList =
                                                    snapshot.data!;
                                                if (pastupcomingTasksRecordList
                                                    .isEmpty) {
                                                  return const EmptyWidgetupcomingWidget();
                                                }

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: List.generate(
                                                      pastupcomingTasksRecordList
                                                          .length,
                                                      (pastupcomingIndex) {
                                                    final pastupcomingTasksRecord =
                                                        pastupcomingTasksRecordList[
                                                            pastupcomingIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  14.0,
                                                                  0.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 70.0,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        dateTimeFormat(
                                                                          "h:mm",
                                                                          pastupcomingTasksRecord
                                                                              .startTime,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                        'NA',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'sf pro medium 500',
                                                                            color:
                                                                                const Color(0xFF462FD0),
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey('sf pro medium 500'),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      dateTimeFormat(
                                                                        "a",
                                                                        pastupcomingTasksRecord
                                                                            .startTime,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'sf pro normal 400',
                                                                          color:
                                                                              const Color(0xFFA5ACAD),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('sf pro normal 400'),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
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
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            14.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    pastupcomingTasksRecord.icon,
                                                                                    'https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/Untitled%20design.png?alt=media&token=6cef9d5f-86ef-4022-9f08-4ab26bf89d23',
                                                                                  ),
                                                                                  width: 38.0,
                                                                                  height: 38.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 143.0,
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 150.0,
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: Text(
                                                                                            valueOrDefault<String>(
                                                                                              pastupcomingTasksRecord.taskName,
                                                                                              'NA',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'sf pro bold 700',
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  letterSpacing: 1.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro bold 700'),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  dateTimeFormat(
                                                                                                    "jm",
                                                                                                    pastupcomingTasksRecord.startTime,
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'sf pro bold 700',
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 1.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro bold 700'),
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(const SizedBox(width: 5.0)),
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
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                24.0,
                                                                            height:
                                                                                24.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.fill,
                                                                                image: Image.asset(
                                                                                  'assets/images/Icon_(8).png',
                                                                                ).image,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                              border: Border.all(
                                                                                color: const Color(0xFF5DD9C1),
                                                                                width: 1.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Opacity(
                                                                    opacity:
                                                                        0.2,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (pastupcomingTasksRecord
                                                                          .isPriority ==
                                                                      true)
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Priority task',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: const Color(0x82FF5963),
                                                                                letterSpacing: 1.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              100.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.location_pin,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              size: 24.0,
                                                                            ),
                                                                            Container(
                                                                              width: 135.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  pastupcomingTasksRecord.location,
                                                                                  'NA',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 1.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 5.0)),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  dateTimeFormat(
                                                                                    "yMMMd",
                                                                                    pastupcomingTasksRecord.taskDate,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'sf pro normal 400',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 1.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro normal 400'),
                                                                                    ),
                                                                              ),
                                                                              if (pastupcomingTasksRecord.addedMembers.isNotEmpty)
                                                                                Expanded(
                                                                                  child: StreamBuilder<List<UserRecord>>(
                                                                                    stream: queryUserRecord(
                                                                                      queryBuilder: (userRecord) => userRecord.whereIn('uid', pastupcomingTasksRecord.addedMembers.map((e) => e.id).toList()),
                                                                                    ),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).primary,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      List<UserRecord> rowUserRecordList = snapshot.data!;

                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: List.generate(rowUserRecordList.length, (rowIndex) {
                                                                                          final rowUserRecord = rowUserRecordList[rowIndex];
                                                                                          return Align(
                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 25.0,
                                                                                              height: 25.0,
                                                                                              clipBehavior: Clip.antiAlias,
                                                                                              decoration: const BoxDecoration(
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: Image.network(
                                                                                                rowUserRecord.photoUrl,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }).divide(
                                                      const SizedBox(height: 15.0)),
                                                );
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
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
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: const BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.custNavbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const CustNavbarWidget(
                      pageName: 'myEvents',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
