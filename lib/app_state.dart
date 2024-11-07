import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _initialDate = prefs.containsKey('ff_initialDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_initialDate')!)
          : _initialDate;
    });
    _safeInit(() {
      _userRef = prefs.getString('ff_userRef')?.ref ?? _userRef;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  Color _gradient1 = const Color(0xffe7b9cb);
  Color get gradient1 => _gradient1;
  set gradient1(Color value) {
    _gradient1 = value;
  }

  Color _gradient2 = const Color(0xffd1ccdd);
  Color get gradient2 => _gradient2;
  set gradient2(Color value) {
    _gradient2 = value;
  }

  List<IconsStruct> _icons = [
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"name\":\"Bank\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/Bank.png?alt=media&token=704a68f0-7d9e-442b-a3b2-511862f280bd\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"name\":\"meeting\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/Meeting.png?alt=media&token=eecab057-25b8-4702-bfc8-12a24ae7b3e3\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"name\":\"Sport\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/Sport.png?alt=media&token=67a5eb0a-305f-4cc3-a69b-f93c17aada37\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"name\":\"Study\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/Study.png?alt=media&token=385e0cee-317c-4136-a6c6-b7fa15177a48\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"name\":\"birthday\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/birthday.png?alt=media&token=7938ab23-68d6-412c-8404-c6dbd6e00434\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"name\":\"date\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/date.png?alt=media&token=4494538e-dedd-4501-bee5-70f4a7bdf7d0\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"name\":\"hospital\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/hospital.png?alt=media&token=a89fda13-99a0-49b3-9fed-208be9382f0c\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"name\":\"lunch\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/lunch.png?alt=media&token=0dac78fe-7c24-4744-8a66-baffda35d09f\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"name\":\"meeting2\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/meeting%202.png?alt=media&token=54128af3-4c34-4a47-a190-6cbba6a69535\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"10\",\"name\":\"doctor\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/octor.png?alt=media&token=0100ca31-da2f-4ef1-80d7-3fe44b489641\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"name\":\"coffee\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/coffee.png?alt=media&token=301b23d3-bbdb-43ae-a085-d4f84fdd897d\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"12\",\"name\":\"pharmacy\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/pharmacy.png?alt=media&token=2b84c3e2-0d0d-4315-b059-568ce8cb91dd\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"name\":\"work\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/work%202.png?alt=media&token=a069ab2a-55d6-44b4-936b-977b162251a6\"}')),
    IconsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"14\",\"name\":\"work2\",\"photourl\":\"https://firebasestorage.googleapis.com/v0/b/my-daily-planner-app-nujtrf.appspot.com/o/work.png?alt=media&token=9d64cdf0-e797-4b67-9336-75579a1bba34\"}'))
  ];
  List<IconsStruct> get icons => _icons;
  set icons(List<IconsStruct> value) {
    _icons = value;
  }

  void addToIcons(IconsStruct value) {
    icons.add(value);
  }

  void removeFromIcons(IconsStruct value) {
    icons.remove(value);
  }

  void removeAtIndexFromIcons(int index) {
    icons.removeAt(index);
  }

  void updateIconsAtIndex(
    int index,
    IconsStruct Function(IconsStruct) updateFn,
  ) {
    icons[index] = updateFn(_icons[index]);
  }

  void insertAtIndexInIcons(int index, IconsStruct value) {
    icons.insert(index, value);
  }

  bool _isFirstLoad = false;
  bool get isFirstLoad => _isFirstLoad;
  set isFirstLoad(bool value) {
    _isFirstLoad = value;
  }

  DateTime? _initialDate;
  DateTime? get initialDate => _initialDate;
  set initialDate(DateTime? value) {
    _initialDate = value;
    value != null
        ? prefs.setInt('ff_initialDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_initialDate');
  }

  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? value) {
    _userRef = value;
    value != null
        ? prefs.setString('ff_userRef', value.path)
        : prefs.remove('ff_userRef');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
