import 'package:shared_preferences/shared_preferences.dart';

Future<void> setTokenToSharedPref(String token) async {
  print("setting token $token");
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token);
}

Future<String> getTokenFromSharedPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  final token = await prefs.getString('token');
  return token;
}
