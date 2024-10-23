import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IconsRecord extends FirestoreRecord {
  IconsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "iconsFile" field.
  List<String>? _iconsFile;
  List<String> get iconsFile => _iconsFile ?? const [];
  bool hasIconsFile() => _iconsFile != null;

  void _initializeFields() {
    _iconsFile = getDataList(snapshotData['iconsFile']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('icons');

  static Stream<IconsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IconsRecord.fromSnapshot(s));

  static Future<IconsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IconsRecord.fromSnapshot(s));

  static IconsRecord fromSnapshot(DocumentSnapshot snapshot) => IconsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IconsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IconsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IconsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IconsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIconsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class IconsRecordDocumentEquality implements Equality<IconsRecord> {
  const IconsRecordDocumentEquality();

  @override
  bool equals(IconsRecord? e1, IconsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.iconsFile, e2?.iconsFile);
  }

  @override
  int hash(IconsRecord? e) => const ListEquality().hash([e?.iconsFile]);

  @override
  bool isValidKey(Object? o) => o is IconsRecord;
}
