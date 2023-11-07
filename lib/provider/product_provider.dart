import 'package:flutter/material.dart';

import '../model/product/ListProduct.dart';
import '../repo/api.dart';


class ProductProvider extends ChangeNotifier{
  List<Data> listProduct = [];
  bool isLoading = false;
  bool isFinished = false;
  String error = "";

  getProducts(){
    //dibuat true dulu supaya tampil widget loadingnya di halaman home
    isLoading = true;
    isFinished = false;
    notifyListeners();
    // request data list product dengan mengeksekusikan function getListProduct pada class API
    Api.getListProduct().then((value) {
      //jika berhasil request data dan dapat datanya, maka variabel listProduct di isikan dengan data baru
      listProduct = value.data!;
      isLoading = false;
      isFinished = true;
      notifyListeners();
    }).catchError((exError){
      //jika tidak/error, maka masukan pesan error ke variabel error
      error = exError;
      isLoading = false;
      isFinished = false;
      notifyListeners();
    });
  }
}