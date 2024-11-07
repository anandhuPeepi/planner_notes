import '/backend/backend.dart';
import '/components/cust_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_event_page_widget.dart' show CreateEventPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateEventPageModel extends FlutterFlowModel<CreateEventPageWidget> {
  ///  Local state fields for this page.

  int topSelectedMonth = 1;

  DateTime? initialDate;

  bool isPendingSelected = true;

  String? slctedicon;

  int? selctdIconID;

  int? carhr;

  bool isPriority = true;

  List<String> listOfSharedUsers = [];
  void addToListOfSharedUsers(String item) => listOfSharedUsers.add(item);
  void removeFromListOfSharedUsers(String item) =>
      listOfSharedUsers.remove(item);
  void removeAtIndexFromListOfSharedUsers(int index) =>
      listOfSharedUsers.removeAt(index);
  void insertAtIndexInListOfSharedUsers(int index, String item) =>
      listOfSharedUsers.insert(index, item);
  void updateListOfSharedUsersAtIndex(int index, Function(String) updateFn) =>
      listOfSharedUsers[index] = updateFn(listOfSharedUsers[index]);

  List<UserRecord> addedMembers = [];
  void addToAddedMembers(UserRecord item) => addedMembers.add(item);
  void removeFromAddedMembers(UserRecord item) => addedMembers.remove(item);
  void removeAtIndexFromAddedMembers(int index) => addedMembers.removeAt(index);
  void insertAtIndexInAddedMembers(int index, UserRecord item) =>
      addedMembers.insert(index, item);
  void updateAddedMembersAtIndex(int index, Function(UserRecord) updateFn) =>
      addedMembers[index] = updateFn(addedMembers[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldtask widget.
  FocusNode? textFieldtaskFocusNode;
  TextEditingController? textFieldtaskTextController;
  String? Function(BuildContext, String?)? textFieldtaskTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TextFieldLocation widget.
  FocusNode? textFieldLocationFocusNode;
  TextEditingController? textFieldLocationTextController;
  String? Function(BuildContext, String?)?
      textFieldLocationTextControllerValidator;
  // Model for CustNavbar component.
  late CustNavbarModel custNavbarModel;

  @override
  void initState(BuildContext context) {
    custNavbarModel = createModel(context, () => CustNavbarModel());
  }

  @override
  void dispose() {
    textFieldtaskFocusNode?.dispose();
    textFieldtaskTextController?.dispose();

    textFieldLocationFocusNode?.dispose();
    textFieldLocationTextController?.dispose();

    custNavbarModel.dispose();
  }
}
