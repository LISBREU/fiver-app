import '../database.dart';

class OrderStatusTable extends SupabaseTable<OrderStatusRow> {
  @override
  String get tableName => 'order_status';

  @override
  OrderStatusRow createRow(Map<String, dynamic> data) => OrderStatusRow(data);
}

class OrderStatusRow extends SupabaseDataRow {
  OrderStatusRow(super.data);

  @override
  SupabaseTable get table => OrderStatusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}