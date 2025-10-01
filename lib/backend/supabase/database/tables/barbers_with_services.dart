import '../database.dart';

class BarbersWithServicesTable extends SupabaseTable<BarbersWithServicesRow> {
  @override
  String get tableName => 'barbers_with_services';

  @override
  BarbersWithServicesRow createRow(Map<String, dynamic> data) =>
      BarbersWithServicesRow(data);
}

class BarbersWithServicesRow extends SupabaseDataRow {
  BarbersWithServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BarbersWithServicesTable();

  String? get barberId => getField<String>('barber_id');
  set barberId(String? value) => setField<String>('barber_id', value);

  String? get barberUserId => getField<String>('barber_user_id');
  set barberUserId(String? value) => setField<String>('barber_user_id', value);

  String? get barberName => getField<String>('barber_name');
  set barberName(String? value) => setField<String>('barber_name', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get serviceId => getField<String>('service_id');
  set serviceId(String? value) => setField<String>('service_id', value);

  String? get serviceName => getField<String>('service_name');
  set serviceName(String? value) => setField<String>('service_name', value);

  int? get servicePrice => getField<int>('service_price');
  set servicePrice(int? value) => setField<int>('service_price', value);

  int? get serviceDuration => getField<int>('service_duration');
  set serviceDuration(int? value) => setField<int>('service_duration', value);
}
