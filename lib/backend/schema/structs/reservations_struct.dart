// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservationsStruct extends BaseStruct {
  ReservationsStruct({
    String? customerName,
    DateTime? startDateTime,
    DateTime? endDateTime,
    Color? color,
  })  : _customerName = customerName,
        _startDateTime = startDateTime,
        _endDateTime = endDateTime,
        _color = color;

  // "CustomerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  set customerName(String? val) => _customerName = val;

  bool hasCustomerName() => _customerName != null;

  // "StartDateTime" field.
  DateTime? _startDateTime;
  DateTime? get startDateTime => _startDateTime;
  set startDateTime(DateTime? val) => _startDateTime = val;

  bool hasStartDateTime() => _startDateTime != null;

  // "EndDateTime" field.
  DateTime? _endDateTime;
  DateTime? get endDateTime => _endDateTime;
  set endDateTime(DateTime? val) => _endDateTime = val;

  bool hasEndDateTime() => _endDateTime != null;

  // "Color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  static ReservationsStruct fromMap(Map<String, dynamic> data) =>
      ReservationsStruct(
        customerName: data['CustomerName'] as String?,
        startDateTime: data['StartDateTime'] as DateTime?,
        endDateTime: data['EndDateTime'] as DateTime?,
        color: getSchemaColor(data['Color']),
      );

  static ReservationsStruct? maybeFromMap(dynamic data) => data is Map
      ? ReservationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CustomerName': _customerName,
        'StartDateTime': _startDateTime,
        'EndDateTime': _endDateTime,
        'Color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CustomerName': serializeParam(
          _customerName,
          ParamType.String,
        ),
        'StartDateTime': serializeParam(
          _startDateTime,
          ParamType.DateTime,
        ),
        'EndDateTime': serializeParam(
          _endDateTime,
          ParamType.DateTime,
        ),
        'Color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ReservationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReservationsStruct(
        customerName: deserializeParam(
          data['CustomerName'],
          ParamType.String,
          false,
        ),
        startDateTime: deserializeParam(
          data['StartDateTime'],
          ParamType.DateTime,
          false,
        ),
        endDateTime: deserializeParam(
          data['EndDateTime'],
          ParamType.DateTime,
          false,
        ),
        color: deserializeParam(
          data['Color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ReservationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReservationsStruct &&
        customerName == other.customerName &&
        startDateTime == other.startDateTime &&
        endDateTime == other.endDateTime &&
        color == other.color;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([customerName, startDateTime, endDateTime, color]);
}

ReservationsStruct createReservationsStruct({
  String? customerName,
  DateTime? startDateTime,
  DateTime? endDateTime,
  Color? color,
}) =>
    ReservationsStruct(
      customerName: customerName,
      startDateTime: startDateTime,
      endDateTime: endDateTime,
      color: color,
    );
