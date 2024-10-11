import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'calender_model.dart';
export 'calender_model.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

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
      _model.initialDate = getCurrentTimestamp;
      safeSetState(() {});

      await currentUserReference!.update(createUserRecordData());
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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Homepage.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 152.0,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 48.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 49.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  14.0, 0.0, 14.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    'Calender',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'sf pro',
                                          letterSpacing: 1.0,
                                          fontWeight: FontWeight.w800,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(14.0, 30.0, 0.0, 20.0),
                    child: Text(
                      'Upcoming',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'sf pro',
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Container(
                    height: _model.isWeekViewSelected == true ? 224.0 : 375.0,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
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
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.isWeekViewSelected = true;
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
                                              end: AlignmentDirectional(0, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Week',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.isWeekViewSelected = false;
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
                                          'Month',
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 14.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (_model.isWeekViewSelected == true)
                                    Container(
                                      width: double.infinity,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: FlutterFlowCalendar(
                                          color: const Color(0xFFC4ADE3),
                                          iconColor: Colors.transparent,
                                          weekFormat: true,
                                          weekStartsMonday: true,
                                          initialDate: _model.initialDate,
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
                                                _model.calendarSelectedDay1;
                                            safeSetState(() {});
                                            safeSetState(() {});
                                          },
                                          titleStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: const Color(0xFF745A8F),
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          dayOfWeekStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: const Color(0xFFA5ACAD),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          dateStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: const Color(0xFF2F3334),
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          selectedDateStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          inactiveDateStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                      ),
                                    ),
                                  if (_model.isWeekViewSelected == false)
                                    Container(
                                      width: double.infinity,
                                      height: 327.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: FlutterFlowCalendar(
                                          color: const Color(0xFFC4ADE3),
                                          iconColor: Colors.transparent,
                                          weekFormat: false,
                                          weekStartsMonday: true,
                                          initialDate: _model.initialDate,
                                          rowHeight: 48.0,
                                          onChange: (DateTimeRange?
                                              newSelectedDate) async {
                                            if (_model.calendarSelectedDay2 ==
                                                newSelectedDate) {
                                              return;
                                            }
                                            _model.calendarSelectedDay2 =
                                                newSelectedDate;
                                            _model.userPickedDate =
                                                _model.calendarSelectedDay2;
                                            safeSetState(() {});
                                            safeSetState(() {});
                                          },
                                          titleStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: const Color(0xFF745A8F),
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          dayOfWeekStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: const Color(0xFFA5ACAD),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          dateStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: const Color(0xFF2F3334),
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          selectedDateStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          inactiveDateStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'sf pro',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
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
                  StreamBuilder<List<TasksRecord>>(
                    stream: queryTasksRecord(
                      queryBuilder: (tasksRecord) => tasksRecord.where(
                        'taskDate',
                        isEqualTo: _model.userPickedDate?.start,
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
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<TasksRecord> listViewTasksRecordList =
                          snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewTasksRecordList.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                        itemBuilder: (context, listViewIndex) {
                          final listViewTasksRecord =
                              listViewTasksRecordList[listViewIndex];
                          return Container(
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Icon_(5).png',
                                        width: 48.0,
                                        height: 48.0,
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        14.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewTasksRecord.taskName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'sf pro',
                                                color: Colors.white,
                                                letterSpacing: 2.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 7.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Opacity(
                                                opacity: 0.8,
                                                child: Text(
                                                  '9:00 - ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'sf pro',
                                                        color: Colors.white,
                                                        letterSpacing: 1.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.8,
                                                child: Text(
                                                  '10.00',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'sf pro',
                                                        color: Colors.white,
                                                        letterSpacing: 1.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.8,
                                                child: Text(
                                                  '10.00',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'sf pro',
                                                        color: Colors.white,
                                                        letterSpacing: 1.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          Icons.snapchat,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
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
