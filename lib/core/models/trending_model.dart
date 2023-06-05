

import 'dart:convert';

import 'package:netflixclone/core/models/result.dart';

// Function to parse the JSON string and create a TrendingModel instance
TrendingModel trendingModelFromJson(String str) =>
    TrendingModel.fromJson(json.decode(str));

// Function to convert a TrendingModel instance to a JSON string
//is a function that takes a TrendingModel object (data) and converts it into a JSON string using the json.encode() function. 
String trendingModelToJson(TrendingModel data) => json.encode(data.toJson());

class TrendingModel {
  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  TrendingModel({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
  // Factory method to create a TrendingModel instance from a JSON map
  factory TrendingModel.fromJson(Map<String, dynamic> json) => TrendingModel(
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
            //results property, which is a list of Result objects, uses the toJson() 
            //function of the Result class to convert each individual Result object to a JSON map.
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
      
 // Method to convert a TrendingModel instance to a JSON map
 //Use toJson() when you have a specific class and want to define custom serialization logic for that class.
 //to convert TrendingModel object into a JSON format
 // function is commonly used when we want to convert an object to a JSON string for purposes such as sending the data over a network
  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}
