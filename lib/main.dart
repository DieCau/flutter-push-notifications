import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:push_notifications_app/pages/login_page.dart';
import 'package:push_notifications_app/preferences/pref_users.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Aqui inicializamos las UserPreference
  await UsersPreference.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final prefs = UsersPreference();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: prefs.lastPage,
      routes: {
        LoginPage.routename : (context) => const LoginPage()
      },
    );
  }
}