import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pyplayer3/screens/playlist.dart';

import '../model/contact.dart';

class PostRequestClass {
  final String url = 'http://neoxs.github.io/api/sendContacts'; // Replace with your API endpoint

  Future<void> postNamesAndPhoneNumbers(List<Map<String, String>> contacts) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(contacts),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Request successful
        print('POST request successful');
        print(response.body);
      } else {
        // Request failed
        print('POST request failed with status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error occurred during POST request: $error');
    }
  }
}
