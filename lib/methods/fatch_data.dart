import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../data_model/complex_api.dart';
import '../data_model/get_model.dart';


class AllData extends GetxController{

  RxList postList = [].obs;

  Future<RxList> getPostApi ()async{
    final resposne = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users')) ;
    var data = jsonDecode(resposne.body.toString());
    if(resposne.statusCode == 200){
      for(Map<String, dynamic> i in data){
        postList.add(GetAllData.fromJson(i));
      }
      return postList ;
    }else {
      return postList ;
    }
  }


  Future<ComplexApi> getProductsApi () async {

    //create your own api
    final response = await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2023-11-02&sortBy=publishedAt&apiKey=4b786dad4c714d329a3c4b8939a890ad'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      return ComplexApi.fromJson(data);
    }else {
      return ComplexApi.fromJson(data);
    }
  }


}