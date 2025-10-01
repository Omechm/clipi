import '../database.dart';

class TransactionsTable extends SupabaseTable<TransactionsRow> {
  @override
  String get tableName => 'transactions';

  @override
  TransactionsRow createRow(Map<String, dynamic> data) => TransactionsRow(data);
}

class TransactionsRow extends SupabaseDataRow {
  TransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get appointmentId => getField<String>('appointment_id');
  set appointmentId(String? value) => setField<String>('appointment_id', value);

  String? get stripePaymentId => getField<String>('stripe_payment_id');
  set stripePaymentId(String? value) =>
      setField<String>('stripe_payment_id', value);

  int? get amountCents => getField<int>('amount_cents');
  set amountCents(int? value) => setField<int>('amount_cents', value);

  int? get platformFeeCents => getField<int>('platform_fee_cents');
  set platformFeeCents(int? value) =>
      setField<int>('platform_fee_cents', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
