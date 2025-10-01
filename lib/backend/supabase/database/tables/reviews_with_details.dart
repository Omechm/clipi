import '../database.dart';

class ReviewsWithDetailsTable extends SupabaseTable<ReviewsWithDetailsRow> {
  @override
  String get tableName => 'reviews_with_details';

  @override
  ReviewsWithDetailsRow createRow(Map<String, dynamic> data) =>
      ReviewsWithDetailsRow(data);
}

class ReviewsWithDetailsRow extends SupabaseDataRow {
  ReviewsWithDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewsWithDetailsTable();

  String? get reviewId => getField<String>('review_id');
  set reviewId(String? value) => setField<String>('review_id', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  DateTime? get reviewCreatedAt => getField<DateTime>('review_created_at');
  set reviewCreatedAt(DateTime? value) =>
      setField<DateTime>('review_created_at', value);

  String? get appointmentId => getField<String>('appointment_id');
  set appointmentId(String? value) => setField<String>('appointment_id', value);

  String? get barberId => getField<String>('barber_id');
  set barberId(String? value) => setField<String>('barber_id', value);

  String? get barberUserId => getField<String>('barber_user_id');
  set barberUserId(String? value) => setField<String>('barber_user_id', value);

  String? get barberName => getField<String>('barber_name');
  set barberName(String? value) => setField<String>('barber_name', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientAvatar => getField<String>('client_avatar');
  set clientAvatar(String? value) => setField<String>('client_avatar', value);
}
