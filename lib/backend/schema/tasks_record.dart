import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "isFinished" field.
  bool? _isFinished;
  bool get isFinished => _isFinished ?? false;
  bool hasIsFinished() => _isFinished != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "taskDate" field.
  DateTime? _taskDate;
  DateTime? get taskDate => _taskDate;
  bool hasTaskDate() => _taskDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startTime = snapshotData['startTime'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _taskName = snapshotData['taskName'] as String?;
    _isFinished = snapshotData['isFinished'] as bool?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _taskDate = snapshotData['taskDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('tasks')
          : FirebaseFirestore.instance.collectionGroup('tasks');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('tasks').doc(id);

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  DateTime? startTime,
  DocumentReference? uid,
  String? taskName,
  bool? isFinished,
  DateTime? endTime,
  DateTime? taskDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startTime': startTime,
      'uid': uid,
      'taskName': taskName,
      'isFinished': isFinished,
      'endTime': endTime,
      'taskDate': taskDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.startTime == e2?.startTime &&
        e1?.uid == e2?.uid &&
        e1?.taskName == e2?.taskName &&
        e1?.isFinished == e2?.isFinished &&
        e1?.endTime == e2?.endTime &&
        e1?.taskDate == e2?.taskDate;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.startTime,
        e?.uid,
        e?.taskName,
        e?.isFinished,
        e?.endTime,
        e?.taskDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
