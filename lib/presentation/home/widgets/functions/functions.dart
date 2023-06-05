import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflixclone/core/models/result.dart';
import 'package:netflixclone/core/models/trending_model.dart';

import '../../../../core/strings.dart';

class HomeFunction {
  static List<Result> trending = [];
  static List<Result> comingSoon = [];
  static List<Result> nowPlaying = [];
  static List<Result> topRated = [];
  // static String image = '';

  static Future<void> getTrending() async {
    try {
    
      final response = await http.get(Uri.parse(trendingUrl));
          if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        TrendingModel pages = TrendingModel.fromJson(data);
      
        // image = pages.results[5].posterPath!;
        trending = pages.results;
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<void> getComingSoon() async {
    try {
      final response = await http.get(Uri.parse(comingSoonUrl));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        TrendingModel pages = TrendingModel.fromJson(data);
        // image = pages.results[5].posterPath!;
        comingSoon = pages.results;
      }
    } catch (e) {
      print(e);
    }
  }
// This method retrieves the current list of movies 
static Future<void> getNowPlaying() async {
  try {
  
    final response = await http.get(Uri.parse(nowPlayingUrl));
    
   
    if (response.statusCode == 200) {
      
      
      Map<String, dynamic> data = jsonDecode(response.body);
      
      
      TrendingModel pages = TrendingModel.fromJson(data);
      
     
      nowPlaying = pages.results;
    }
  } catch (e) {
    // If an error occurs, print the error message to the console
    print(e);
  }
}


  static Future<void> gettopRated() async {
    try {
      final response = await http.get(Uri.parse(topRatedUrl));
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        TrendingModel pages = TrendingModel.fromJson(data);
        // image = pages.results[5].posterPath!;
        topRated = pages.results;
        
      }
    } catch (e) {
      print(e);
    }
  }
}
Future post(var b,var a)async{
   var url=Uri.parse(topRatedUrl);
   var body=jsonEncode({"name":'ada',"id":12});
   var response=await http.post(body: body,url);
}