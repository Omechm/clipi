import '../database.dart';

class AppointmentsWithDetailsTable
    extends SupabaseTable<AppointmentsWithDetailsRow> {
  @override
  String get tableName => 'appointments_with_details';

  @override
  AppointmentsWithDetailsRow createRow(Map<String, dynamic> data) =>
      AppointmentsWithDetailsRow(data);
}

class AppointmentsWithDetailsRow extends SupabaseDataRow {
  AppointmentsWithDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppointmentsWithDetailsTable();

  String? get appointmentId => getField<String>('appointment_id');
  set appointmentId(String? value) => setField<String>('appointment_id', value);

  DateTime? get startTime => getField<DateTime>('start_time');
  set startTime(DateTime? value) => setField<DateTime>('start_time', value);

  DateTime? get endTime => getField<DateTime>('end_time');
  set endTime(DateTime? value) => setField<DateTime>('end_time', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get priceCents => getField<int>('price_cents');
  set priceCents(int? value) => setField<int>('price_cents', value);

  int? get tipCents => getField<int>('tip_cents');
  set tipCents(int? value) => setField<int>('tip_cents', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  dynamic get address => getField<dynamic>('address');
  set address(dynamic value) => setField<dynamic>('address', value);

  DateTime? get appointmentCreatedAt =>
      getField<DateTime>('appointment_created_at');
  set appointmentCreatedAt(DateTime? value) =>
      setField<DateTime>('appointment_created_at', value);

  String? get barberId => getField<String>('barber_id');
  set barberId(String? value) => setField<String>('barber_id', value);

  String? get barberUserId => getField<String>('barber_user_id');
  set barberUserId(String? value) => setField<String>('barber_user_id', value);

  String? get barberBio => getField<String>('barber_bio');
  set barberBio(String? value) => setField<String>('barber_bio', value);

  double? get barberRating => getField<double>('barber_rating');
  set barberRating(double? value) => setField<double>('barber_rating', value);

  String? get serviceId => getField<String>('service_id');
  set serviceId(String? value) => setField<String>('service_id', value);

  String? get serviceName => getField<String>('service_name');
  set serviceName(String? value) => setField<String>('service_name', value);

  int? get servicePrice => getField<int>('service_price');
  set servicePrice(int? value) => setField<int>('service_price', value);

  int? get serviceDuration => getField<int>('service_duration');
  set serviceDuration(int? value) => setField<int>('service_duration', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientPhone => getField<String>('client_phone');
  set clientPhone(String? value) => setField<String>('client_phone', value);

  String? get clientAvatar => getField<String>('client_avatar');
  set clientAvatar(String? value) => setField<String>('client_avatar', value);
}
