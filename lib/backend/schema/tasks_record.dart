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

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "isPriority" field.
  bool? _isPriority;
  bool get isPriority => _isPriority ?? false;
  bool hasIsPriority() => _isPriority != null;

  // "eventimeHR" field.
  int? _eventimeHR;
  int get eventimeHR => _eventimeHR ?? 0;
  bool hasEventimeHR() => _eventimeHR != null;

  // "eventTimeMinute" field.
  int? _eventTimeMinute;
  int get eventTimeMinute => _eventTimeMinute ?? 0;
  bool hasEventTimeMinute() => _eventTimeMinute != null;

  // "EventAmPm" field.
  int? _eventAmPm;
  int get eventAmPm => _eventAmPm ?? 0;
  bool hasEventAmPm() => _eventAmPm != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "assignedUsersid" field.
  List<String>? _assignedUsersid;
  List<String> get assignedUsersid => _assignedUsersid ?? const [];
  bool hasAssignedUsersid() => _assignedUsersid != null;

  // "hostedBy" field.
  String? _hostedBy;
  String get hostedBy => _hostedBy ?? '';
  bool hasHostedBy() => _hostedBy != null;

  // "addedMembers" field.
  List<DocumentReference>? _addedMembers;
  List<DocumentReference> get addedMembers => _addedMembers ?? const [];
  bool hasAddedMembers() => _addedMembers != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startTime = snapshotData['startTime'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _taskName = snapshotData['taskName'] as String?;
    _isFinished = snapshotData['isFinished'] as bool?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _taskDate = snapshotData['taskDate'] as DateTime?;
    _location = snapshotData['location'] as String?;
    _isPriority = snapshotData['isPriority'] as bool?;
    _eventimeHR = castToType<int>(snapshotData['eventimeHR']);
    _eventTimeMinute = castToType<int>(snapshotData['eventTimeMinute']);
    _eventAmPm = castToType<int>(snapshotData['EventAmPm']);
    _icon = snapshotData['icon'] as String?;
    _assignedUsersid = getDataList(snapshotData['assignedUsersid']);
    _hostedBy = snapshotData['hostedBy'] as String?;
    _addedMembers = getDataList(snapshotData['addedMembers']);
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
  String? location,
  bool? isPriority,
  int? eventimeHR,
  int? eventTimeMinute,
  int? eventAmPm,
  String? icon,
  String? hostedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startTime': startTime,
      'uid': uid,
      'taskName': taskName,
      'isFinished': isFinished,
      'endTime': endTime,
      'taskDate': taskDate,
      'location': location,
      'isPriority': isPriority,
      'eventimeHR': eventimeHR,
      'eventTimeMinute': eventTimeMinute,
      'EventAmPm': eventAmPm,
      'icon': icon,
      'hostedBy': hostedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startTime == e2?.startTime &&
        e1?.uid == e2?.uid &&
        e1?.taskName == e2?.taskName &&
        e1?.isFinished == e2?.isFinished &&
        e1?.endTime == e2?.endTime &&
        e1?.taskDate == e2?.taskDate &&
        e1?.location == e2?.location &&
        e1?.isPriority == e2?.isPriority &&
        e1?.eventimeHR == e2?.eventimeHR &&
        e1?.eventTimeMinute == e2?.eventTimeMinute &&
        e1?.eventAmPm == e2?.eventAmPm &&
        e1?.icon == e2?.icon &&
        listEquality.equals(e1?.assignedUsersid, e2?.assignedUsersid) &&
        e1?.hostedBy == e2?.hostedBy &&
        listEquality.equals(e1?.addedMembers, e2?.addedMembers);
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.startTime,
        e?.uid,
        e?.taskName,
        e?.isFinished,
        e?.endTime,
        e?.taskDate,
        e?.location,
        e?.isPriority,
        e?.eventimeHR,
        e?.eventTimeMinute,
        e?.eventAmPm,
        e?.icon,
        e?.assignedUsersid,
        e?.hostedBy,
        e?.addedMembers
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
