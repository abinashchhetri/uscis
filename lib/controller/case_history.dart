import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:uscis/models/case_history_model.dart';

class CaseHistory {
  List<CaseHistoryModel> caseHistories = [];

  getCaseDetails() async {
    final response =
        await http.get(Uri.parse('https://tracker.h1binfo.org/api/v1/cases'));

    var jsonData = jsonDecode(response.body);

    if (response.body == 200) {
      debugPrint("its working");
      for (var json in jsonData) {
        caseHistories.add(json);
      }
    } else {
      debugPrint("error while fetching data");
    }
    return caseHistories;
  }
}
