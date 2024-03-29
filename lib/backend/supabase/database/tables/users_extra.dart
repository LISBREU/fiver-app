import '../database.dart';

class UsersExtraTable extends SupabaseTable<UsersExtraRow> {
  @override
  String get tableName => 'users_extra';

  @override
  UsersExtraRow createRow(Map<String, dynamic> data) => UsersExtraRow(data);
}

class UsersExtraRow extends SupabaseDataRow {
  UsersExtraRow(super.data);

  @override
  SupabaseTable get table => UsersExtraTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get avatar => getField<String>('avatar');
  set avatar(String? value) => setField<String>('avatar', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
