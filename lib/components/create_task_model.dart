import '/flutter_flow/flutter_flow_util.dart';
import 'create_task_widget.dart' show CreateTaskWidget;
import 'package:flutter/material.dart';

class CreateTaskModel extends FlutterFlowModel<CreateTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
