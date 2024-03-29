import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://jfyzbcpsasnlkvkgidoi.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpmeXpiY3BzYXNubGt2a2dpZG9pIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA5Mzk2ODEsImV4cCI6MjAyNjUxNTY4MX0.aOdD9zXYPRtLLiEtOWkfbOh9k1-02faBUY_f5jm47wM';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
