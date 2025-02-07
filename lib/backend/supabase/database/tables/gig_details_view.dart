import '../database.dart';

class GigDetailsViewTable extends SupabaseTable<GigDetailsViewRow> {
  @override
  String get tableName => 'gig_details_view';

  @override
  GigDetailsViewRow createRow(Map<String, dynamic> data) =>
      GigDetailsViewRow(data);
}

class GigDetailsViewRow extends SupabaseDataRow {
  GigDetailsViewRow(super.data);

  @override
  SupabaseTable get table => GigDetailsViewTable();

  int? get gigId => getField<int>('gig_id');
  set gigId(int? value) => setField<int>('gig_id', value);

  DateTime? get gigCreatedAt => getField<DateTime>('gig_created_at');
  set gigCreatedAt(DateTime? value) =>
      setField<DateTime>('gig_created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get gigsImages => getField<String>('gigs_images');
  set gigsImages(String? value) => setField<String>('gigs_images', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get avatar => getField<String>('avatar');
  set avatar(String? value) => setField<String>('avatar', value);

  String? get tier1Name => getField<String>('tier1_name');
  set tier1Name(String? value) => setField<String>('tier1_name', value);

  String? get tier1Desc => getField<String>('tier1_desc');
  set tier1Desc(String? value) => setField<String>('tier1_desc', value);

  double? get tier1Price => getField<double>('tier1_price');
  set tier1Price(double? value) => setField<double>('tier1_price', value);

  String? get tier2Name => getField<String>('tier2_name');
  set tier2Name(String? value) => setField<String>('tier2_name', value);

  String? get tier2Desc => getField<String>('tier2_desc');
  set tier2Desc(String? value) => setField<String>('tier2_desc', value);

  double? get tier2Price => getField<double>('tier2_price');
  set tier2Price(double? value) => setField<double>('tier2_price', value);

  String? get tier3Name => getField<String>('tier3_name');
  set tier3Name(String? value) => setField<String>('tier3_name', value);

  String? get tier3Desc => getField<String>('tier3_desc');
  set tier3Desc(String? value) => setField<String>('tier3_desc', value);

  double? get tier3Price => getField<double>('tier3_price');
  set tier3Price(double? value) => setField<double>('tier3_price', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);
}
