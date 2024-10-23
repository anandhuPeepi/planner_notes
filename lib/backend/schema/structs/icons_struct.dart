// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IconsStruct extends FFFirebaseStruct {
  IconsStruct({
    int? id,
    String? name,
    String? photourl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _photourl = photourl,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "photourl" field.
  String? _photourl;
  String get photourl => _photourl ?? '';
  set photourl(String? val) => _photourl = val;

  bool hasPhotourl() => _photourl != null;

  static IconsStruct fromMap(Map<String, dynamic> data) => IconsStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        photourl: data['photourl'] as String?,
      );

  static IconsStruct? maybeFromMap(dynamic data) =>
      data is Map ? IconsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'photourl': _photourl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'photourl': serializeParam(
          _photourl,
          ParamType.String,
        ),
      }.withoutNulls;

  static IconsStruct fromSerializableMap(Map<String, dynamic> data) =>
      IconsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        photourl: deserializeParam(
          data['photourl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IconsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IconsStruct &&
        id == other.id &&
        name == other.name &&
        photourl == other.photourl;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, photourl]);
}

IconsStruct createIconsStruct({
  int? id,
  String? name,
  String? photourl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IconsStruct(
      id: id,
      name: name,
      photourl: photourl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IconsStruct? updateIconsStruct(
  IconsStruct? icons, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    icons
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIconsStructData(
  Map<String, dynamic> firestoreData,
  IconsStruct? icons,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (icons == null) {
    return;
  }
  if (icons.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && icons.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final iconsData = getIconsFirestoreData(icons, forFieldValue);
  final nestedData = iconsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = icons.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIconsFirestoreData(
  IconsStruct? icons, [
  bool forFieldValue = false,
]) {
  if (icons == null) {
    return {};
  }
  final firestoreData = mapToFirestore(icons.toMap());

  // Add any Firestore field values
  icons.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIconsListFirestoreData(
  List<IconsStruct>? iconss,
) =>
    iconss?.map((e) => getIconsFirestoreData(e, true)).toList() ?? [];
