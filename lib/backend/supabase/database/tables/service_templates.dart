import '../database.dart';

class ServiceTemplatesTable extends SupabaseTable<ServiceTemplatesRow> {
  @override
  String get tableName => 'service_templates';

  @override
  ServiceTemplatesRow createRow(Map<String, dynamic> data) =>
      ServiceTemplatesRow(data);
}

class ServiceTemplatesRow extends SupabaseDataRow {
  ServiceTemplatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceTemplatesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int get defaultPriceCents => getField<int>('default_price_cents')!;
  set defaultPriceCents(int value) =>
      setField<int>('default_price_cents', value);

  int get defaultDurationMinutes => getField<int>('default_duration_minutes')!;
  set defaultDurationMinutes(int value) =>
      setField<int>('default_duration_minutes', value);
}
