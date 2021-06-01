import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/case.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'shared_preferences.dart';

Future<List<Case>> getCases() async {
  List<Case> cases = [];
  String token;
  try {
    await getTokenFromSharedPrefs().then((value) => token = value);
    print(token);
  } catch (err) {
    print(err);
  }

  final response = await http.get(Uri.parse('http://localhost:3000/cases/'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      });
  if (response.statusCode == 201) {
    var casesJson = json.decode(response.body);
    try {
      for (var caseJson in casesJson) {
        print(caseJson["name"]);
        cases.add(Case(
          caseJson["name"],
          caseJson["birthdate"],
          caseJson["date"],
          caseJson["risk"],
          caseJson["sex"],
          caseJson["email"],
          caseJson["address"],
          caseJson["clasi"],
        ));
      }
    } catch (e) {
      print(e);
    }
  }

  return cases;
}
