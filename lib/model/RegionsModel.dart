import 'dart:convert';
/// success : true
/// result : {"totalPages":1,"data":[{"_id":"6458d89e488064e7a2facafb","title":"NEPAL","createdAt":"2023-05-08T11:10:22.611Z","updatedAt":"2023-05-18T15:10:50.311Z","__v":0},{"_id":"6458d897488064e7a2facaa5","title":"JAPAN","createdAt":"2023-05-08T11:10:15.568Z","updatedAt":"2023-05-08T11:10:15.568Z","__v":0},{"_id":"6458d890488064e7a2faca4f","title":"UAE","createdAt":"2023-05-08T11:10:08.142Z","updatedAt":"2023-05-08T11:10:08.142Z","__v":0},{"_id":"6458d88b488064e7a2faca46","title":"UK","createdAt":"2023-05-08T11:10:03.068Z","updatedAt":"2023-05-08T11:10:03.068Z","__v":0},{"_id":"6458d881488064e7a2fac9f0","title":"USA","createdAt":"2023-05-08T11:09:53.092Z","updatedAt":"2023-05-08T11:09:53.092Z","__v":0},{"_id":"64564cd3488064e7a2ed498d","title":"Karachi","createdAt":"2023-05-06T12:49:23.969Z","updatedAt":"2023-05-06T12:49:23.969Z","__v":0},{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0}],"limit":25,"currentPage":1}

RegionsModel regionsModelFromJson(String str) => RegionsModel.fromJson(json.decode(str));
String regionsModelToJson(RegionsModel data) => json.encode(data.toJson());
class RegionsModel {
  RegionsModel({
      bool? success, 
      Result? result,}){
    _success = success;
    _result = result;
}

  RegionsModel.fromJson(dynamic json) {
    _success = json['success'];
    _result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  bool? _success;
  Result? _result;
RegionsModel copyWith({  bool? success,
  Result? result,
}) => RegionsModel(  success: success ?? _success,
  result: result ?? _result,
);
  bool? get success => _success;
  Result? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_result != null) {
      map['result'] = _result?.toJson();
    }
    return map;
  }

}

/// totalPages : 1
/// data : [{"_id":"6458d89e488064e7a2facafb","title":"NEPAL","createdAt":"2023-05-08T11:10:22.611Z","updatedAt":"2023-05-18T15:10:50.311Z","__v":0},{"_id":"6458d897488064e7a2facaa5","title":"JAPAN","createdAt":"2023-05-08T11:10:15.568Z","updatedAt":"2023-05-08T11:10:15.568Z","__v":0},{"_id":"6458d890488064e7a2faca4f","title":"UAE","createdAt":"2023-05-08T11:10:08.142Z","updatedAt":"2023-05-08T11:10:08.142Z","__v":0},{"_id":"6458d88b488064e7a2faca46","title":"UK","createdAt":"2023-05-08T11:10:03.068Z","updatedAt":"2023-05-08T11:10:03.068Z","__v":0},{"_id":"6458d881488064e7a2fac9f0","title":"USA","createdAt":"2023-05-08T11:09:53.092Z","updatedAt":"2023-05-08T11:09:53.092Z","__v":0},{"_id":"64564cd3488064e7a2ed498d","title":"Karachi","createdAt":"2023-05-06T12:49:23.969Z","updatedAt":"2023-05-06T12:49:23.969Z","__v":0},{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0}]
/// limit : 25
/// currentPage : 1

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      num? totalPages, 
      List<Data>? data, 
      num? limit, 
      num? currentPage,}){
    _totalPages = totalPages;
    _data = data;
    _limit = limit;
    _currentPage = currentPage;
}

  Result.fromJson(dynamic json) {
    _totalPages = json['totalPages'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _limit = json['limit'];
    _currentPage = json['currentPage'];
  }
  num? _totalPages;
  List<Data>? _data;
  num? _limit;
  num? _currentPage;
Result copyWith({  num? totalPages,
  List<Data>? data,
  num? limit,
  num? currentPage,
}) => Result(  totalPages: totalPages ?? _totalPages,
  data: data ?? _data,
  limit: limit ?? _limit,
  currentPage: currentPage ?? _currentPage,
);
  num? get totalPages => _totalPages;
  List<Data>? get data => _data;
  num? get limit => _limit;
  num? get currentPage => _currentPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalPages'] = _totalPages;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['limit'] = _limit;
    map['currentPage'] = _currentPage;
    return map;
  }

}

/// _id : "6458d89e488064e7a2facafb"
/// title : "NEPAL"
/// createdAt : "2023-05-08T11:10:22.611Z"
/// updatedAt : "2023-05-18T15:10:50.311Z"
/// __v : 0

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _id = id;
    _title = title;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _title;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
Data copyWith({  String? id,
  String? title,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get title => _title;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}