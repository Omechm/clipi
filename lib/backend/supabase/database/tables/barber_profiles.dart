import '../database.dart';

class BarberProfilesTable extends SupabaseTable<BarberProfilesRow> {
  @override
  String get tableName => 'barber_profiles';

  @override
  BarberProfilesRow createRow(Map<String, dynamic> data) =>
      BarberProfilesRow(data);
}

class BarberProfilesRow extends SupabaseDataRow {
  BarberProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BarberProfilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get shopId => getField<String>('shop_id');
  set shopId(String? value) => setField<String>('shop_id', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
