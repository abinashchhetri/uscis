import 'dart:math';

import 'package:http/http.dart' as http;

class User {

  

  Future<http.Response> getUser(String reciptNumber) async {
    String url = "https://tracker.h1binfo.org/api/v1/search?$reciptNumber";

    var response = await http.get(Uri.parse(url));
  return response;

  }
}


