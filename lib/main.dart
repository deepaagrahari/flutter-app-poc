import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'login_register_app.dart';

final supabase = Supabase.instance.client;

void main() async {
  await Supabase.initialize(
    url: 'https://tfamjsixoivrivrphexl.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRmYW1qc2l4b2l2cml2cnBoZXhsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQ2MjMxNjEsImV4cCI6MjAyMDE5OTE2MX0.80zK4dYGqksJ9EE_gAddpzSX3JbdJ5-1uRLzYOyIx64',
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(const LoginRegisterApp()),
  );
}
