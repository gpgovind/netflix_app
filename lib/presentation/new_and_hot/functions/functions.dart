import 'dart:convert';

import 'package:netflixclone/core/models/result.dart';
import 'package:netflixclone/core/models/trending_model.dart';
import 'package:netflixclone/core/strings.dart';
import 'package:http/http.dart' as http;

class NewAndHotFunctions {
  static List<Result> discover = [];
  static Future<void> getDiscover() async {
    try {
      final response = await http.get(Uri.parse(discoveUrl));
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        TrendingModel pages = TrendingModel.fromJson(data);
        discover.addAll(pages.results);
      }
    } catch (e) {
      print(e);
    }
  }
}
