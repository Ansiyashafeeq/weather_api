import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_api/model.dart';
class Weatherdata{
  Future<store> getWeatherdata(String place) async{
    try {
      final query_parameter={
        'key':'07e1fb51a83d45618d055057233001',
        'q':place,
      };
      final uri=Uri.http('api.weatherapi.com','/v1/current.json',query_parameter);
      final response =await  http.get(uri);
      if(response.statusCode==200){
        return store.fromJson(jsonDecode(response.body));
      }else{
        throw Exception('cannot get weather data');
      }
    }
    catch(e){
      rethrow;
    }
  }
}