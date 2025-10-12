import '../database.dart';

class ServicesTable extends SupabaseTable<ServicesRow> {
  @override
  String get tableName => 'services';

  @override
  ServicesRow createRow(Map<String, dynamic> data) => ServicesRow(data);
}

class ServicesRow extends SupabaseDataRow {
  ServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get barberId => getField<String>('barber_id');
  set barberId(String? value) => setField<String>('barber_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int get priceCents => getField<int>('price_cents')!;
  set priceCents(int value) => setField<int>('price_cents', value);

  int get durationMinutes => getField<int>('duration_minutes')!;
  set durationMinutes(int value) => setField<int>('duration_minutes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);
}
