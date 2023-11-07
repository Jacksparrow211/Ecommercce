/// data : [{"id":"1223","name":"sepatu","price":"1000000","image":"http://localhost/incubator_zaki/pengenalan_php/e_commerce/images/example.png","subcategory":"adidas core work"}]
/// status : 200
/// message : "List sudah berhasil ditampilkan"

class ListProduct {
  ListProduct({
      List<Data>? data, 
      num? status, 
      String? message,}){
    _data = data;
    _status = status;
    _message = message;
}

  ListProduct.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _status = json['status'];
    _message = json['message'];
  }
  List<Data>? _data;
  num? _status;
  String? _message;
ListProduct copyWith({  List<Data>? data,
  num? status,
  String? message,
}) => ListProduct(  data: data ?? _data,
  status: status ?? _status,
  message: message ?? _message,
);
  List<Data>? get data => _data;
  num? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}

/// id : "1223"
/// name : "sepatu"
/// price : "1000000"
/// image : "http://localhost/incubator_zaki/pengenalan_php/e_commerce/images/example.png"
/// subcategory : "adidas core work"

class Data {
  Data({
      String? id, 
      String? name, 
      String? price, 
      String? image, 
      String? subcategory,}){
    _id = id;
    _name = name;
    _price = price;
    _image = image;
    _subcategory = subcategory;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'];
    _image = json['image'];
    _subcategory = json['subcategory'];
  }
  String? _id;
  String? _name;
  String? _price;
  String? _image;
  String? _subcategory;
Data copyWith({  String? id,
  String? name,
  String? price,
  String? image,
  String? subcategory,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  price: price ?? _price,
  image: image ?? _image,
  subcategory: subcategory ?? _subcategory,
);
  String? get id => _id;
  String? get name => _name;
  String? get price => _price;
  String? get image => _image;
  String? get subcategory => _subcategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['price'] = _price;
    map['image'] = _image;
    map['subcategory'] = _subcategory;
    return map;
  }

}