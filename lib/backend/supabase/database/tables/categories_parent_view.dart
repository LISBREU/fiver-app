import '../database.dart';

class CategoriesParentViewTable extends SupabaseTable<CategoriesParentViewRow> {
  @override
  String get tableName => 'categories_parent_view';

  @override
  CategoriesParentViewRow createRow(Map<String, dynamic> data) =>
      CategoriesParentViewRow(data);
}

class CategoriesParentViewRow extends SupabaseDataRow {
  CategoriesParentViewRow(super.data);

  @override
  SupabaseTable get table => CategoriesParentViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
