import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/product/ListProduct.dart';

const BASE_URL = "http://192.168.18.39/incubator_zaki/pengenalan_php/e_commerce/api/";

class Api{
  static Future<ListProduct> getListProduct ()async{
    try{
      var url =  BASE_URL + "product/list-product.php";
      final response = await http.get(Uri.parse(url));

      if(response.statusCode == 200) {
        return ListProduct.fromJson(jsonDecode(response.body));
      }else{
        throw "error : Gagal menampilkan list product";
      }
    }catch(ex){
      throw "error : $ex";
    }
  }
}