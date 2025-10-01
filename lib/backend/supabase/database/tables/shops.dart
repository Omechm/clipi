import '../database.dart';

class ShopsTable extends SupabaseTable<ShopsRow> {
  @override
  String get tableName => 'shops';

  @override
  ShopsRow createRow(Map<String, dynamic> data) => ShopsRow(data);
}

class ShopsRow extends SupabaseDataRow {
  ShopsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShopsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get ownerId => getField<String>('owner_id');
  set ownerId(String? value) => setField<String>('owner_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double get lat => getField<double>('lat')!;
  set lat(double value) => setField<double>('lat', value);

  double get long => getField<double>('long')!;
  set long(double value) => setField<double>('long', value);
}
