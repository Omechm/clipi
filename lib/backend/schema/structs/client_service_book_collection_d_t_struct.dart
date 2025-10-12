// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientServiceBookCollectionDTStruct extends BaseStruct {
  ClientServiceBookCollectionDTStruct({
    String? serviceId,
    String? serviceName,
    int? price,
    DateTime? date,
    DateTime? startTime,
    DateTime? endTime,
    String? address,
    LatLng? lat,
    LatLng? lng,
  })  : _serviceId = serviceId,
        _serviceName = serviceName,
        _price = price,
        _date = date,
        _startTime = startTime,
        _endTime = endTime,
        _address = address,
        _lat = lat,
        _lng = lng;

  // "serviceId" field.
  String? _serviceId;
  String get serviceId => _serviceId ?? '';
  set serviceId(String? val) => _serviceId = val;

  bool hasServiceId() => _serviceId != null;

  // "serviceName" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  set serviceName(String? val) => _serviceName = val;

  bool hasServiceName() => _serviceName != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "lat" field.
  LatLng? _lat;
  LatLng? get lat => _lat;
  set lat(LatLng? val) => _lat = val;

  bool hasLat() => _lat != null;

  // "lng" field.
  LatLng? _lng;
  LatLng? get lng => _lng;
  set lng(LatLng? val) => _lng = val;

  bool hasLng() => _lng != null;

  static ClientServiceBookCollectionDTStruct fromMap(
          Map<String, dynamic> data) =>
      ClientServiceBookCollectionDTStruct(
        serviceId: data['serviceId'] as String?,
        serviceName: data['serviceName'] as String?,
        price: castToType<int>(data['price']),
        date: data['date'] as DateTime?,
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
        address: data['address'] as String?,
        lat: data['lat'] as LatLng?,
        lng: data['lng'] as LatLng?,
      );

  static ClientServiceBookCollectionDTStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ClientServiceBookCollectionDTStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'serviceId': _serviceId,
        'serviceName': _serviceName,
        'price': _price,
        'date': _date,
        'startTime': _startTime,
        'endTime': _endTime,
        'address': _address,
        'lat': _lat,
        'lng': _lng,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'serviceId': serializeParam(
          _serviceId,
          ParamType.String,
        ),
        'serviceName': serializeParam(
          _serviceName,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.LatLng,
        ),
        'lng': serializeParam(
          _lng,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static ClientServiceBookCollectionDTStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ClientServiceBookCollectionDTStruct(
        serviceId: deserializeParam(
          data['serviceId'],
          ParamType.String,
          false,
        ),
        serviceName: deserializeParam(
          data['serviceName'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.DateTime,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.LatLng,
          false,
        ),
        lng: deserializeParam(
          data['lng'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'ClientServiceBookCollectionDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClientServiceBookCollectionDTStruct &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        price == other.price &&
        date == other.date &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        address == other.address &&
        lat == other.lat &&
        lng == other.lng;
  }

  @override
  int get hashCode => const ListEquality().hash([
        serviceId,
        serviceName,
        price,
        date,
        startTime,
        endTime,
        address,
        lat,
        lng
      ]);
}

ClientServiceBookCollectionDTStruct createClientServiceBookCollectionDTStruct({
  String? serviceId,
  String? serviceName,
  int? price,
  DateTime? date,
  DateTime? startTime,
  DateTime? endTime,
  String? address,
  LatLng? lat,
  LatLng? lng,
}) =>
    ClientServiceBookCollectionDTStruct(
      serviceId: serviceId,
      serviceName: serviceName,
      price: price,
      date: date,
      startTime: startTime,
      endTime: endTime,
      address: address,
      lat: lat,
      lng: lng,
    );
