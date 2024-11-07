import '/components/cust_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'other_user_profile_widget.dart' show OtherUserProfileWidget;
import 'package:flutter/material.dart';

class OtherUserProfileModel extends FlutterFlowModel<OtherUserProfileWidget> {
  ///  Local state fields for this page.

  int topSelectedMonth = 1;

  DateTime? initialDate;

  bool isPendingSelected = true;

  List<String> chumma = [];
  void addToChumma(String item) => chumma.add(item);
  void removeFromChumma(String item) => chumma.remove(item);
  void removeAtIndexFromChumma(int index) => chumma.removeAt(index);
  void insertAtIndexInChumma(int index, String item) =>
      chumma.insert(index, item);
  void updateChummaAtIndex(int index, Function(String) updateFn) =>
      chumma[index] = updateFn(chumma[index]);

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
