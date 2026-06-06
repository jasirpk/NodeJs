import 'dart:convert';
import 'dart:developer';

import 'package:frontend/model/person_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static String baseUrl = "http://localhost:3000/api/";
  static List<PersonModel> personData = [];

  /// POST Api

  static Future<void> addPerson(Map pdata) async {
    try {
      final res = await http.post(Uri.parse("${baseUrl}add_person"), body: pdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        log("Final Result: $data");
      } else {
        log("Error: ${res.statusCode}");
      }
    } catch (e) {
      log("Error: $e");
    }
  }

  // GET Api

  static Future<void> getPersons() async {
    try {
      final res = await http.get(Uri.parse("${baseUrl}get_persons"));

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        log("Final Result: $data");
        List persons = data['person'];

        personData.clear();
        for (var person in persons) {
          personData.add(PersonModel.fromJson(person));
        }
      }
    } catch (e) {
      log('Error: $e');
    }
  }
}
