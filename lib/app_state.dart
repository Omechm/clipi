import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _ReserveCollection = prefs
              .getStringList('ff_ReserveCollection')
              ?.map((x) {
                try {
                  return ReservationsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ReserveCollection;
    });
    _safeInit(() {
      _Phone = prefs.getString('ff_Phone') ?? _Phone;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _lendarSelectedDay = '';
  String get lendarSelectedDay => _lendarSelectedDay;
  set lendarSelectedDay(String value) {
    _lendarSelectedDay = value;
  }

  bool _switchOn = false;
  bool get switchOn => _switchOn;
  set switchOn(bool value) {
    _switchOn = value;
  }

  DateTime? _selectedDay = DateTime.fromMillisecondsSinceEpoch(1704602340000);
  DateTime? get selectedDay => _selectedDay;
  set selectedDay(DateTime? value) {
    _selectedDay = value;
  }

  DateTime? _selectedDayIndicator =
      DateTime.fromMillisecondsSinceEpoch(1704506400000);
  DateTime? get selectedDayIndicator => _selectedDayIndicator;
  set selectedDayIndicator(DateTime? value) {
    _selectedDayIndicator = value;
  }

  int _hourHeight = 150;
  int get hourHeight => _hourHeight;
  set hourHeight(int value) {
    _hourHeight = value;
  }

  List<ReservationsStruct> _ReserveCollection = [
    ReservationsStruct.fromSerializableMap(jsonDecode(
        '{\"CustomerName\":\"Ana\",\"StartDateTime\":\"1704535200000\",\"EndDateTime\":\"1704560400000\",\"Color\":\"#f9cf58\"}')),
    ReservationsStruct.fromSerializableMap(jsonDecode(
        '{\"CustomerName\":\"Pedro\",\"StartDateTime\":\"1704536940000\",\"EndDateTime\":\"1704563940000\",\"Color\":\"#7b1cc8\"}'))
  ];
  List<ReservationsStruct> get ReserveCollection => _ReserveCollection;
  set ReserveCollection(List<ReservationsStruct> value) {
    _ReserveCollection = value;
    prefs.setStringList(
        'ff_ReserveCollection', value.map((x) => x.serialize()).toList());
  }

  void addToReserveCollection(ReservationsStruct value) {
    ReserveCollection.add(value);
    prefs.setStringList('ff_ReserveCollection',
        _ReserveCollection.map((x) => x.serialize()).toList());
  }

  void removeFromReserveCollection(ReservationsStruct value) {
    ReserveCollection.remove(value);
    prefs.setStringList('ff_ReserveCollection',
        _ReserveCollection.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromReserveCollection(int index) {
    ReserveCollection.removeAt(index);
    prefs.setStringList('ff_ReserveCollection',
        _ReserveCollection.map((x) => x.serialize()).toList());
  }

  void updateReserveCollectionAtIndex(
    int index,
    ReservationsStruct Function(ReservationsStruct) updateFn,
  ) {
    ReserveCollection[index] = updateFn(_ReserveCollection[index]);
    prefs.setStringList('ff_ReserveCollection',
        _ReserveCollection.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInReserveCollection(int index, ReservationsStruct value) {
    ReserveCollection.insert(index, value);
    prefs.setStringList('ff_ReserveCollection',
        _ReserveCollection.map((x) => x.serialize()).toList());
  }

  int _scaleCollum = 0;
  int get scaleCollum => _scaleCollum;
  set scaleCollum(int value) {
    _scaleCollum = value;
  }

  bool _ProfileBarber = false;
  bool get ProfileBarber => _ProfileBarber;
  set ProfileBarber(bool value) {
    _ProfileBarber = value;
  }

  DateTime? _initialDate;
  DateTime? get initialDate => _initialDate;
  set initialDate(DateTime? value) {
    _initialDate = value;
  }

  int _rateApp = 0;
  int get rateApp => _rateApp;
  set rateApp(int value) {
    _rateApp = value;
  }

  String _Phone = '';
  String get Phone => _Phone;
  set Phone(String value) {
    _Phone = value;
    prefs.setString('ff_Phone', value);
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
