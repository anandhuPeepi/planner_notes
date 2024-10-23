import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_task_widget.dart' show CreateTaskWidget;
import 'package:flutter/material.dart';

class CreateTaskModel extends FlutterFlowModel<CreateTaskWidget> {
  ///  Local state fields for this component.

  String choosenIcon =
      'https://cdn.iconscout.com/icon/free/png-256/free-default-icon-download-in-svg-png-gif-file-formats--quickly-comfortably-document-report-symbols-vol-1-pack-sign-icons-4285113.png?f=webp&w=256';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextFieldloc widget.
  FocusNode? textFieldlocFocusNode;
  TextEditingController? textFieldlocTextController;
  String? Function(BuildContext, String?)? textFieldlocTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TasksRecord? sadsad;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldlocFocusNode?.dispose();
    textFieldlocTextController?.dispose();
  }
}
