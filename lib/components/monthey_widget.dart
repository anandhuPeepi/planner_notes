import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'monthey_model.dart';
export 'monthey_model.dart';

class MontheyWidget extends StatefulWidget {
  const MontheyWidget({super.key});

  @override
  State<MontheyWidget> createState() => _MontheyWidgetState();
}

class _MontheyWidgetState extends State<MontheyWidget> {
  late MontheyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MontheyModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Jan',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Feb',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Mar',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Apr',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'May',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Jun',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Jul',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Aug',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Sep',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Oct',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Nov',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'Dec',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'sf pro',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
        ].divide(const SizedBox(width: 15.0)),
      ),
    );
  }
}
