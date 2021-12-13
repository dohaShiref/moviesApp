import 'dart:convert';

import 'package:movies/models/popular_response.dart';
import 'package:http/http.dart' as http;

class ApiManager{
  static const apiKey='76c10f5efbc98f79bdf6af47c53a5659';
  static Future<Popular_response> apiLoadPopular() async{
    var parametars={
      'apiKey':apiKey,
    };
    var uri=Uri.https("themoviedb.org", "/3/movie/popular",parametars);

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
}