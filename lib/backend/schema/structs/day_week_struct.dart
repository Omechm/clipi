// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DayWeekStruct extends BaseStruct {
  DayWeekStruct({
    String? day,
    String? dayNumber,
    Color? color,
    DateTime? dateTime,
  })  : _day = day,
        _dayNumber = dayNumber,
        _color = color,
        _dateTime = dateTime;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  set day(String? val) => _day = val;

  bool hasDay() => _day != null;

  // "dayNumber" field.
  String? _dayNumber;
  String get dayNumber => _dayNumber ?? '';
  set dayNumber(String? val) => _dayNumber = val;

  bool hasDayNumber() => _dayNumber != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  set dateTime(DateTime? val) => _dateTime = val;

  bool hasDateTime() => _dateTime != null;

  static DayWeekStruct fromMap(Map<String, dynamic> data) => DayWeekStruct(
        day: data['day'] as String?,
        dayNumber: data['dayNumber'] as String?,
        color: getSchemaColor(data['color']),
        dateTime: data['dateTime'] as DateTime?,
      );

  static DayWeekStruct? maybeFromMap(dynamic data) =>
      data is Map ? DayWeekStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'day': _day,
        'dayNumber': _dayNumber,
        'color': _color,
        'dateTime': _dateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'day': serializeParam(
          _day,
          ParamType.String,
        ),
        'dayNumber': serializeParam(
          _dayNumber,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'dateTime': serializeParam(
          _dateTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DayWeekStruct fromSerializableMap(Map<String, dynamic> data) =>
      DayWeekStruct(
        day: deserializeParam(
          data['day'],
          ParamType.String,
          false,
        ),
        dayNumber: deserializeParam(
          data['dayNumber'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        dateTime: deserializeParam(
          data['dateTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DayWeekStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DayWeekStruct &&
        day == other.day &&
        dayNumber == other.dayNumber &&
        color == other.color &&
        dateTime == other.dateTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([day, dayNumber, color, dateTime]);
}

DayWeekStruct createDayWeekStruct({
  String? day,
  String? dayNumber,
  Color? color,
  DateTime? dateTime,
}) =>
    DayWeekStruct(
      day: day,
      dayNumber: dayNumber,
      color: color,
      dateTime: dateTime,
    );
