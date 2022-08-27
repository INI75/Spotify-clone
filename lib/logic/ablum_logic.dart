import 'package:flutter/material.dart';
import 'package:spotify/classes/ablums.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../classes/ablumNetObject.dart';
import 'package:provider/provider.dart';
//////////////////////////////////////////

/////  create methods that interatct with the provider and calls request  

class AblumManagementProvider with ChangeNotifier {


  List<AblumObject> _list = [];


  Future<void> fetchAblum() async{
  final response = await http.get(Uri.parse('https://api.spotify.com/v1/albums?ids=382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc'));

  if(response.statusCode == 200){
  print(response.body);
 // return Album.fromJson(jsonDecode(response.body));
}
else{
throw Exception('failed to load ablum');
}
}


}
