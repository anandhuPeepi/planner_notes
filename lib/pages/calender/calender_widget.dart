import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/cust_navbar_widget.dart';
import '/components/empty_widget_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calender_model.dart';
export 'calender_model.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({
    super.key,
    required this.date,
  });

  final DateTime? date;

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  late CalenderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalenderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userPickedDate = _model.calendarSelectedDay1?.start;
      safeSetState(() {});
      _model.userPickedDate = _model.calendarSelectedDay2?.start;
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
                  'assets/images/Homepage.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(9.0, 105.0, 0.0, 10.0),
                  child: Text(
                    'Upcoming',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'sf pro medium 500',
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('sf pro medium 500'),
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 140.0, 0.0, 70.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  14.0, 5.0, 14.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      14.0, 0.0, 14.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.isWeekViewSelected = true;
                                              _model.weekTogle = true;
                                              safeSetState(() {});
                                            },
                                            child: Container(
                                              height: 36.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    valueOrDefault<Color>(
                                                      _model.isWeekViewSelected
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
                                                      _model.isWeekViewSelected
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
                                                    BorderRadius.circular(14.0),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Week',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'sf pro medium 500',
                                                        color:
                                                            const Color(0xFF141558),
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
                                      Flexible(
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.isWeekViewSelected = false;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            height: 36.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  valueOrDefault<Color>(
                                                    !_model.isWeekViewSelected
                                                        ? FFAppState().gradient1
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                  valueOrDefault<Color>(
                                                    !_model.isWeekViewSelected
                                                        ? FFAppState().gradient2
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    FlutterFlowTheme.of(context)
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
                                                  BorderRadius.circular(14.0),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Month',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily:
                                                          'sf pro medium 500',
                                                      color: const Color(0xFF141558),
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
                                    ].divide(const SizedBox(width: 5.0)),
                                  ),
                                ),
                              ),
                            ),
                            if (_model.isWeekViewSelected == true)
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    14.0, 15.0, 14.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: FlutterFlowCalendar(
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      iconColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      weekFormat: true,
                                      weekStartsMonday: true,
                                      rowHeight: 48.0,
                                      onChange: (DateTimeRange?
                                          newSelectedDate) async {
                                        if (_model.calendarSelectedDay1 ==
                                            newSelectedDate) {
                                          return;
                                        }
                                        _model.calendarSelectedDay1 =
                                            newSelectedDate;
                                        _model.userPickedDate =
                                            _model.calendarSelectedDay1?.start;
                                        safeSetState(() {});
                                      },
                                      titleStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'sf pro normal 400',
                                            color: const Color(0xFF745A8F),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    'sf pro normal 400'),
                                          ),
                                      dayOfWeekStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: const Color(0xFFA5ACAD),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily),
                                          ),
                                      dateStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: const Color(0xFF2F3334),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      selectedDateStyle: FlutterFlowTheme.of(
                                              context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      inactiveDateStyle: FlutterFlowTheme.of(
                                              context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                  ),
                                ),
                              ),
                            if (_model.isWeekViewSelected == false)
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      14.0, 15.0, 14.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 375.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: FlutterFlowCalendar(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          weekFormat: false,
                                          weekStartsMonday: true,
                                          rowHeight: 48.0,
                                          onChange: (DateTimeRange?
                                              newSelectedDate) async {
                                            if (_model.calendarSelectedDay2 ==
                                                newSelectedDate) {
                                              return;
                                            }
                                            _model.calendarSelectedDay2 =
                                                newSelectedDate;
                                            _model.userPickedDate = _model
                                                .calendarSelectedDay2?.start;
                                            safeSetState(() {});
                                          },
                                          titleStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                color: const Color(0xFF745A8F),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily),
                                              ),
                                          dayOfWeekStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: const Color(0xFFA5ACAD),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily),
                                              ),
                                          dateStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'sf pro normal 400',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 1.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        'sf pro normal 400'),
                                              ),
                                          selectedDateStyle: FlutterFlowTheme
                                                  .of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          inactiveDateStyle: FlutterFlowTheme
                                                  .of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    14.0, 20.0, 14.0, 10.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: StreamBuilder<List<TasksRecord>>(
                                      stream: queryTasksRecord(
                                        queryBuilder: (tasksRecord) =>
                                            tasksRecord
                                                .where(
                                                  'taskDate',
                                                  isEqualTo:
                                                      _model.userPickedDate,
                                                )
                                                .where(
                                                  'uid',
                                                  isEqualTo:
                                                      currentUserReference,
                                                ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
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
                                            columnTasksRecordList =
                                            snapshot.data!;
                                        if (columnTasksRecordList.isEmpty) {
                                          return const EmptyWidgetWidget();
                                        }

                                        return SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnTasksRecordList.length,
                                                (columnIndex) {
                                              final columnTasksRecord =
                                                  columnTasksRecordList[
                                                      columnIndex];
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                14.0,
                                                                14.0,
                                                                0.0,
                                                                14.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width: 70.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          5.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                            "h:mm",
                                                                            columnTasksRecord.startTime,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          'NA',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'sf pro medium 500',
                                                                              color: const Color(0xFF462FD0),
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 1.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro medium 500'),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        dateTimeFormat(
                                                                          "a",
                                                                          columnTasksRecord
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
                                                                                1.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey('sf pro normal 400'),
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        14.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 500.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xFFDDCBDC),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14.0),
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'taskviewpage',
                                                                    queryParameters:
                                                                        {
                                                                      'taskDetaILS':
                                                                          serializeParam(
                                                                        columnTasksRecord,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      'taskDetaILS':
                                                                          columnTasksRecord,
                                                                    },
                                                                  );
                                                                },
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          14.0,
                                                                          17.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.stretch,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.network(
                                                                                      valueOrDefault<String>(
                                                                                        columnTasksRecord.icon,
                                                                                        'https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/Untitled%20design.png?alt=media&token=6cef9d5f-86ef-4022-9f08-4ab26bf89d23',
                                                                                      ),
                                                                                      width: 36.0,
                                                                                      height: 36.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 146.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 170.0,
                                                                                              decoration: const BoxDecoration(),
                                                                                              child: Text(
                                                                                                columnTasksRecord.taskName,
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'sf pro bold 700',
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      fontSize: 13.0,
                                                                                                      letterSpacing: 1.0,
                                                                                                      fontWeight: FontWeight.w500,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro bold 700'),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Opacity(
                                                                                                  opacity: 0.8,
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      dateTimeFormat(
                                                                                                        "jm",
                                                                                                        columnTasksRecord.startTime,
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ),
                                                                                                      'NA',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'sf pro bold 700',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontSize: 11.0,
                                                                                                          letterSpacing: 1.0,
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey('sf pro bold 700'),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ].divide(const SizedBox(width: 5.0)),
                                                                                            ),
                                                                                          ].divide(const SizedBox(height: 7.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: [
                                                                                          if (columnTasksRecord.isFinished == true)
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                await columnTasksRecord.reference.update(createTasksRecordData(
                                                                                                  isFinished: false,
                                                                                                ));
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      'Task marked  as pending',
                                                                                                      style: TextStyle(
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 700),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.asset(
                                                                                                  'assets/images/Icon_(8).png',
                                                                                                  width: 24.0,
                                                                                                  height: 24.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                  alignment: const Alignment(1.0, 0.0),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (columnTasksRecord.isFinished == false)
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                await columnTasksRecord.reference.update(createTasksRecordData(
                                                                                                  isFinished: true,
                                                                                                ));
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      'You marked the Task as finished',
                                                                                                      style: TextStyle(
                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                      ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 700),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                              child: Container(
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            13.5,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              270.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (columnTasksRecord
                                                                            .isPriority ==
                                                                        true)
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              14.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Priority task',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          7.0,
                                                                          0.0,
                                                                          7.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
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
                                                                                  columnTasksRecord.location,
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
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      dateTimeFormat(
                                                                                        "d/M/y",
                                                                                        columnTasksRecord.taskDate,
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
                                                                                ),
                                                                                if (columnTasksRecord.addedMembers.isNotEmpty)
                                                                                  Expanded(
                                                                                    child: StreamBuilder<List<UserRecord>>(
                                                                                      stream: queryUserRecord(
                                                                                        queryBuilder: (userRecord) => userRecord.whereIn('uid', columnTasksRecord.addedMembers.map((e) => e.id).toList()),
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
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }),
                                          ),
                                        );
                                      },
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 30.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Opacity(
                            opacity: 0.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/Icon_(1).png',
                                width: 20.0,
                                height: 20.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Calender',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
              Align(
                alignment: const AlignmentDirectional(0.9, 0.76),
                child: Container(
                  width: 53.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'createEventPage',
                        queryParameters: {
                          'selDate': serializeParam(
                            _model.userPickedDate,
                            ParamType.DateTime,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      children: [
                        Container(
                          width: 17.0,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                        Container(
                          width: 1.0,
                          height: 17.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.custNavbarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const CustNavbarWidget(
                          pageName: 'Calender',
                        ),
                      ),
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
