import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'months_model.dart';
export 'months_model.dart';

class MonthsWidget extends StatefulWidget {
  const MonthsWidget({super.key});

  @override
  State<MonthsWidget> createState() => _MonthsWidgetState();
}

class _MonthsWidgetState extends State<MonthsWidget> {
  late MonthsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MonthsModel());

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
      height: 35.0,
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Feb',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'sf pro',
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
            Text(
              'Feb',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'sf pro',
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
          ].divide(const SizedBox(width: 5.0)),
        ),
      ),
    );
  }
}
