import '/components/cust_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'priority_task_page_widget.dart' show PriorityTaskPageWidget;
import 'package:flutter/material.dart';

class PriorityTaskPageModel extends FlutterFlowModel<PriorityTaskPageWidget> {
  ///  Local state fields for this page.

  int topSelectedMonth = 1;

  DateTime? initialDate;

  bool isPendingSelected = true;

  ///  State fields for stateful widgets in this page.

  // Model for CustNavbar component.
  late CustNavbarModel custNavbarModel;

  @override
  void initState(BuildContext context) {
    custNavbarModel = createModel(context, () => CustNavbarModel());
  }

  @override
  void dispose() {
    custNavbarModel.dispose();
  }
}
