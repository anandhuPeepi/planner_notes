import '/flutter_flow/flutter_flow_util.dart';
import 'add_member_widget.dart' show AddMemberWidget;
import 'package:flutter/material.dart';

class AddMemberModel extends FlutterFlowModel<AddMemberWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> addedUsersListComp = [];
  void addToAddedUsersListComp(DocumentReference item) =>
      addedUsersListComp.add(item);
  void removeFromAddedUsersListComp(DocumentReference item) =>
      addedUsersListComp.remove(item);
  void removeAtIndexFromAddedUsersListComp(int index) =>
      addedUsersListComp.removeAt(index);
  void insertAtIndexInAddedUsersListComp(int index, DocumentReference item) =>
      addedUsersListComp.insert(index, item);
  void updateAddedUsersListCompAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      addedUsersListComp[index] = updateFn(addedUsersListComp[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
