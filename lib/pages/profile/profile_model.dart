import '/components/cust_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  int topSelectedMonth = 1;

  DateTime? initialDate;

  bool isPendingSelected = true;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  String currentPageLink = '';
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
