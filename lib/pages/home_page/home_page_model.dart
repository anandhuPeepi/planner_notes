import '/components/cust_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
