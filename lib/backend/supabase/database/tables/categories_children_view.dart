import '../database.dart';

class CategoriesChildrenViewTable
    extends SupabaseTable<CategoriesChildrenViewRow> {
  @override
  String get tableName => 'categories_children_view';

  @override
  CategoriesChildrenViewRow createRow(Map<String, dynamic> data) =>
      CategoriesChildrenViewRow(data);
}

class CategoriesChildrenViewRow extends SupabaseDataRow {
  CategoriesChildrenViewRow(super.data);

  @override
  SupabaseTable get table => CategoriesChildrenViewTable();

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
