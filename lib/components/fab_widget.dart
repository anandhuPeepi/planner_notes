import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'fab_model.dart';
export 'fab_model.dart';

class FabWidget extends StatefulWidget {
  const FabWidget({super.key});

  @override
  State<FabWidget> createState() => _FabWidgetState();
}

class _FabWidgetState extends State<FabWidget> {
  late FabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FabModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.95, 0.73),
      child: Container(
        width: 53.0,
        height: 53.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
          shape: BoxShape.circle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryBackground,
            width: 1.0,
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Icon_(5).png',
              width: 16.0,
              height: 16.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
