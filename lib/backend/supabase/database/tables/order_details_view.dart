import '../database.dart';

class OrderDetailsViewTable extends SupabaseTable<OrderDetailsViewRow> {
  @override
  String get tableName => 'order_details_view';

  @override
  OrderDetailsViewRow createRow(Map<String, dynamic> data) =>
      OrderDetailsViewRow(data);
}

class OrderDetailsViewRow extends SupabaseDataRow {
  OrderDetailsViewRow(super.data);

  @override
  SupabaseTable get table => OrderDetailsViewTable();

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  DateTime? get orderCreatedAt => getField<DateTime>('order_created_at');
  set orderCreatedAt(DateTime? value) =>
      setField<DateTime>('order_created_at', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  int? get gigId => getField<int>('gig_id');
  set gigId(int? value) => setField<int>('gig_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get gigTier => getField<double>('gig_tier');
  set gigTier(double? value) => setField<double>('gig_tier', value);

  String? get gigName => getField<String>('gig_name');
  set gigName(String? value) => setField<String>('gig_name', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get statusTimestamp => getField<DateTime>('status_timestamp');
  set statusTimestamp(DateTime? value) =>
      setField<DateTime>('status_timestamp', value);

  String? get gigOwnerAvatar => getField<String>('gig_owner_avatar');
  set gigOwnerAvatar(String? value) =>
      setField<String>('gig_owner_avatar', value);

  String? get gigOwnerEmail => getField<String>('gig_owner_email');
  set gigOwnerEmail(String? value) =>
      setField<String>('gig_owner_email', value);

  double? get tier1Price => getField<double>('tier1_price');
  set tier1Price(double? value) => setField<double>('tier1_price', value);

  double? get tier2Price => getField<double>('tier2_price');
  set tier2Price(double? value) => setField<double>('tier2_price', value);

  double? get tier3Price => getField<double>('tier3_price');
  set tier3Price(double? value) => setField<double>('tier3_price', value);
}
