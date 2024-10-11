import '/flutter_flow/flutter_flow_util.dart';
import 'calender_widget.dart' show CalenderWidget;
import 'package:flutter/material.dart';

class CalenderModel extends FlutterFlowModel<CalenderWidget> {
  ///  Local state fields for this page.

  DateTime? initialDate;

  bool isWeekViewSelected = true;

  DateTimeRange? userPickedDate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
