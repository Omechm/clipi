// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedDayCalendarStruct extends BaseStruct {
  SelectedDayCalendarStruct({
    SelectedDayCalendarStruct? data,
  }) : _data = data;

  // "data" field.
  SelectedDayCalendarStruct? _data;
  SelectedDayCalendarStruct get data => _data ?? SelectedDayCalendarStruct();
  set data(SelectedDayCalendarStruct? val) => _data = val;

  void updateData(Function(SelectedDayCalendarStruct) updateFn) {
    updateFn(_data ??= SelectedDayCalendarStruct());
  }

  bool hasData() => _data != null;

  static SelectedDayCalendarStruct fromMap(Map<String, dynamic> data) =>
      SelectedDayCalendarStruct(
        data: data['data'] is SelectedDayCalendarStruct
            ? data['data']
            : SelectedDayCalendarStruct.maybeFromMap(data['data']),
      );

  static SelectedDayCalendarStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedDayCalendarStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SelectedDayCalendarStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SelectedDayCalendarStruct(
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: SelectedDayCalendarStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SelectedDayCalendarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedDayCalendarStruct && data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

SelectedDayCalendarStruct createSelectedDayCalendarStruct({
  SelectedDayCalendarStruct? data,
}) =>
    SelectedDayCalendarStruct(
      data: data ?? SelectedDayCalendarStruct(),
    );
