import 'dart:convert';

import 'package:http/http.dart' as http;

getApi() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  if (response.statusCode==200)
  {
   return jsonDecode(response.body);
  }
  else {
    throw Exception('Failed to load');
  }
}