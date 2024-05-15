import 'package:shared_preferences/shared_preferences.dart';

class UsersPreference {
  static late SharedPreferences _prefs;

  // Aqui inicializamos las preferencias de Usuarios
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get lastPage{
    return _prefs.getString('lastPage') ?? 'Login';
  }

  set lastPage(String value) {
    _prefs.setString('lastPage', value);
  }

}