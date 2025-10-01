import '../database.dart';

class ShopsWithBarbersTable extends SupabaseTable<ShopsWithBarbersRow> {
  @override
  String get tableName => 'shops_with_barbers';

  @override
  ShopsWithBarbersRow createRow(Map<String, dynamic> data) =>
      ShopsWithBarbersRow(data);
}

class ShopsWithBarbersRow extends SupabaseDataRow {
  ShopsWithBarbersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShopsWithBarbersTable();

  String? get shopId => getField<String>('shop_id');
  set shopId(String? value) => setField<String>('shop_id', value);

  String? get shopName => getField<String>('shop_name');
  set shopName(String? value) => setField<String>('shop_name', value);

  String? get shopAddress => getField<String>('shop_address');
  set shopAddress(String? value) => setField<String>('shop_address', value);

  String? get ownerId => getField<String>('owner_id');
  set ownerId(String? value) => setField<String>('owner_id', value);

  String? get barberId => getField<String>('barber_id');
  set barberId(String? value) => setField<String>('barber_id', value);

  String? get barberUserId => getField<String>('barber_user_id');
  set barberUserId(String? value) => setField<String>('barber_user_id', value);

  String? get barberName => getField<String>('barber_name');
  set barberName(String? value) => setField<String>('barber_name', value);
}
