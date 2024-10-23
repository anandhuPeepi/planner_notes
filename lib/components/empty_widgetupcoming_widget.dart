import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'empty_widgetupcoming_model.dart';
export 'empty_widgetupcoming_model.dart';

class EmptyWidgetupcomingWidget extends StatefulWidget {
  const EmptyWidgetupcomingWidget({super.key});

  @override
  State<EmptyWidgetupcomingWidget> createState() =>
      _EmptyWidgetupcomingWidgetState();
}

class _EmptyWidgetupcomingWidgetState extends State<EmptyWidgetupcomingWidget> {
  late EmptyWidgetupcomingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyWidgetupcomingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Icon(
                Icons.task_alt,
                color: FlutterFlowTheme.of(context).alternate,
                size: 48.0,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Text(
                'You don\'t have any upcoming task',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'sf pro normal 400',
                      color: FlutterFlowTheme.of(context).alternate,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          GoogleFonts.asMap().containsKey('sf pro normal 400'),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
