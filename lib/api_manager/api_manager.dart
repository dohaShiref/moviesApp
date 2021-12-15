import 'dart:convert';

import 'package:movies/models/details_response.dart';
import 'package:movies/models/latest_response.dart';
import 'package:movies/models/popular_response.dart';
import 'package:http/http.dart' as http;
import 'package:movies/models/similar_response.dart';
import 'package:movies/models/toprated_response.dart';

class ApiManager{
  static const apiKey='76c10f5efbc98f79bdf6af47c53a5659';



  static Future<Popular_response> apiLoadPopular() async{
    var parametars={
      'api_key':apiKey,

    };
    var uri=Uri.https("api.themoviedb.org", "/3/movie/popular",parametars);

    var response= await http.get(uri);
    var popularResponce=Popular_response.fromJson(jsonDecode(response.body));

    if(response.statusCode==200)
    {

      return popularResponce;
    }
    else{
      if(popularResponce.message!=null)
        throw Exception(popularResponce.message);
      else throw Exception("error loading popular movies");

    }


  }

  static Future<Latest_response> apiLoadLatest() async{
    var parametars={
      'api_key':apiKey,

    };
    var uri=Uri.https("api.themoviedb.org", "/3/movie/latest",parametars);

    var response= await http.get(uri);
    var latestResponse=Latest_response.fromJson(jsonDecode(response.body));

    if(response.statusCode==200)
    {

      return latestResponse;
    }
    else{
      if(latestResponse.message!=null)
        throw Exception(latestResponse.message);
      else throw Exception("error loading popular movies");

    }


  }

  static Future<toprated_response> apiLoadToprated() async{
    var parametars={
      'api_key':apiKey,
    };
    var uri=Uri.https("api.themoviedb.org", "/3/movie/top_rated",parametars);

    var response= await http.get(uri);
    var topratedResponse=toprated_response.fromJson(jsonDecode(response.body));

    if(response.statusCode==200)
    {

      return topratedResponse;
    }
    else{
      if(topratedResponse.message!=null)
        throw Exception(topratedResponse.message);
      else throw Exception("error loading popular movies");

    }


  }

  static Future<Details_response> apiLoadDetails(int movie_id) async{
    var parametars={
      'api_key':apiKey,
    };
    var uri=Uri.https("api.themoviedb.org", "/3/movie/${movie_id}",parametars);

    var response= await http.get(uri);
    var DetailsResponse=Details_response.fromJson(jsonDecode(response.body));

    if(response.statusCode==200)
    {

      return DetailsResponse;
    }
    else{
      if(DetailsResponse.message!=null)
        throw Exception(DetailsResponse.message);
      else throw Exception("error loading popular movies");

    }


  }

  static Future<Similar_response> apiLoadSimilar(int movie_id) async{
    var parametars={
      'api_key':apiKey,
    };
    var uri=Uri.https("api.themoviedb.org", "/3/movie/${movie_id}/similar",parametars);

    var response= await http.get(uri);
    var SimilarResponse=Similar_response.fromJson(jsonDecode(response.body));

    if(response.statusCode==200)
    {

      return SimilarResponse;
    }
    else{
      if(SimilarResponse.message!=null)
        throw Exception(SimilarResponse.message);
      else throw Exception("error loading popular movies");

    }


  }









}