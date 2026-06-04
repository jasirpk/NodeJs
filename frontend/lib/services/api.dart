import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Api {
  static String baseUrl = "http://192.168.1.5:3000/api/";

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
}
