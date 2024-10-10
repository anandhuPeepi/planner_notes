import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'create_task_model.dart';
export 'create_task_model.dart';

class CreateTaskWidget extends StatefulWidget {
  const CreateTaskWidget({
    super.key,
    this.slctdadate,
    required this.vavava,
  });

  final DateTime? slctdadate;
  final DateTime? vavava;

  @override
  State<CreateTaskWidget> createState() => _CreateTaskWidgetState();
}

class _CreateTaskWidgetState extends State<CreateTaskWidget> {
  late CreateTaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateTaskModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Task',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'sf pro',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task Name',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'sf pro',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    textInputAction: TextInputAction.next,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'sf pro',
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'sf pro',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    minLines: 1,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start Time',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'sf pro',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      final datePicked1Time = await showTimePicker(
                        context: context,
                        initialTime:
                            TimeOfDay.fromDateTime(getCurrentTimestamp),
                        builder: (context, child) {
                          return wrapInMaterialTimePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'sf pro',
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            iconSize: 24.0,
                          );
                        },
                      );
                      if (datePicked1Time != null) {
                        safeSetState(() {
                          _model.datePicked1 = DateTime(
                            getCurrentTimestamp.year,
                            getCurrentTimestamp.month,
                            getCurrentTimestamp.day,
                            datePicked1Time.hour,
                            datePicked1Time.minute,
                          );
                        });
                      }
                    },
                    text: 'Select Start Time',
                    icon: Icon(
                      Icons.schedule,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'sf pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'End Time',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'sf pro',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      final datePicked2Time = await showTimePicker(
                        context: context,
                        initialTime:
                            TimeOfDay.fromDateTime(getCurrentTimestamp),
                        builder: (context, child) {
                          return wrapInMaterialTimePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'sf pro',
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            iconSize: 24.0,
                          );
                        },
                      );
                      if (datePicked2Time != null) {
                        safeSetState(() {
                          _model.datePicked2 = DateTime(
                            getCurrentTimestamp.year,
                            getCurrentTimestamp.month,
                            getCurrentTimestamp.day,
                            datePicked2Time.hour,
                            datePicked2Time.minute,
                          );
                        });
                      }
                    },
                    text: 'Select End Time',
                    icon: Icon(
                      Icons.schedule,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'sf pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await TasksRecord.createDoc(currentUserReference!)
                        .set(createTasksRecordData(
                      startTime: _model.datePicked1,
                      uid: currentUserReference,
                      taskName: _model.textController.text,
                      isFinished: false,
                      endTime: _model.datePicked2,
                      taskDate: widget.vavava,
                    ));

                    await currentUserReference!.update(createUserRecordData());
                  },
                  text: 'Create',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).accent1,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'sf pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
