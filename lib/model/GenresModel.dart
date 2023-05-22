import 'dart:convert';
/// success : true
/// result : {"totalPages":1,"data":[{"_id":"645cfe8d241433599eb28965","title":"Comedy","createdAt":"2023-05-11T14:41:17.344Z","updatedAt":"2023-05-18T15:01:48.422Z","__v":0},{"_id":"6458d836488064e7a2fac75b","title":"First Person Shooting","createdAt":"2023-05-08T11:08:38.273Z","updatedAt":"2023-05-08T11:08:38.273Z","__v":0},{"_id":"6458d82a488064e7a2fac705","title":"Racing","createdAt":"2023-05-08T11:08:26.901Z","updatedAt":"2023-05-08T11:08:26.901Z","__v":0},{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}],"limit":25,"currentPage":1}

GenresModel genresModelFromJson(String str) => GenresModel.fromJson(json.decode(str));
String genresModelToJson(GenresModel data) => json.encode(data.toJson());
class GenresModel {
  GenresModel({
      bool? success, 
      Result? result,}){
    _success = success;
    _result = result;
}

  GenresModel.fromJson(dynamic json) {
    _success = json['success'];
    _result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  bool? _success;
  Result? _result;
GenresModel copyWith({  bool? success,
  Result? result,
}) => GenresModel(  success: success ?? _success,
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
/// data : [{"_id":"645cfe8d241433599eb28965","title":"Comedy","createdAt":"2023-05-11T14:41:17.344Z","updatedAt":"2023-05-18T15:01:48.422Z","__v":0},{"_id":"6458d836488064e7a2fac75b","title":"First Person Shooting","createdAt":"2023-05-08T11:08:38.273Z","updatedAt":"2023-05-08T11:08:38.273Z","__v":0},{"_id":"6458d82a488064e7a2fac705","title":"Racing","createdAt":"2023-05-08T11:08:26.901Z","updatedAt":"2023-05-08T11:08:26.901Z","__v":0},{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}]
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

/// _id : "645cfe8d241433599eb28965"
/// title : "Comedy"
/// createdAt : "2023-05-11T14:41:17.344Z"
/// updatedAt : "2023-05-18T15:01:48.422Z"
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