import '../database.dart';

class ActiveLocationsTable extends SupabaseTable<ActiveLocationsRow> {
  @override
  String get tableName => 'active_locations';

  @override
  ActiveLocationsRow createRow(Map<String, dynamic> data) =>
      ActiveLocationsRow(data);
}

class ActiveLocationsRow extends SupabaseDataRow {
  ActiveLocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActiveLocationsTable();

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get appointmentId => getField<String>('appointment_id');
  set appointmentId(String? value) => setField<String>('appointment_id', value);

  String? get barberId => getField<String>('barber_id');
  set barberId(String? value) => setField<String>('barber_id', value);

  double? get lat => getField<double>('lat');
  set lat(double? value) => setField<double>('lat', value);

  double? get lng => getField<double>('lng');
  set lng(double? value) => setField<double>('lng', value);

  int? get accuracy => getField<int>('accuracy');
  set accuracy(int? value) => setField<int>('accuracy', value);

  double? get heading => getField<double>('heading');
  set heading(double? value) => setField<double>('heading', value);

  double? get speed => getField<double>('speed');
  set speed(double? value) => setField<double>('speed', value);

  DateTime? get locationCreatedAt => getField<DateTime>('location_created_at');
  set locationCreatedAt(DateTime? value) =>
      setField<DateTime>('location_created_at', value);

  String? get appointmentStatus => getField<String>('appointment_status');
  set appointmentStatus(String? value) =>
      setField<String>('appointment_status', value);

  String? get barberUserId => getField<String>('barber_user_id');
  set barberUserId(String? value) => setField<String>('barber_user_id', value);
}
