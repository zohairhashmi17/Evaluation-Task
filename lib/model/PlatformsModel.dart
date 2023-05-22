import 'dart:convert';
/// success : true
/// result : {"totalPages":1,"data":[{"_id":"645cfed6241433599eb28c76","title":"GoT","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/Ghost of Tsushima Director's Cut.jpg","createdAt":"2023-05-11T14:42:30.078Z","updatedAt":"2023-05-11T14:42:30.078Z","__v":0},{"_id":"6458d848488064e7a2fac80b","title":"Nintendo","createdAt":"2023-05-08T11:08:56.857Z","updatedAt":"2023-05-08T11:08:56.857Z","__v":0},{"_id":"6458d841488064e7a2fac7b5","title":"PS4","createdAt":"2023-05-08T11:08:49.025Z","updatedAt":"2023-05-08T11:08:49.025Z","__v":0},{"_id":"64564c0e488064e7a2ed4568","title":"Takes Two","createdAt":"2023-05-06T12:46:06.199Z","updatedAt":"2023-05-06T12:46:06.199Z","__v":0},{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0}],"limit":25,"currentPage":1}

PlatformsModel platformsModelFromJson(String str) => PlatformsModel.fromJson(json.decode(str));
String platformsModelToJson(PlatformsModel data) => json.encode(data.toJson());
class PlatformsModel {
  PlatformsModel({
      bool? success, 
      Result? result,}){
    _success = success;
    _result = result;
}

  PlatformsModel.fromJson(dynamic json) {
    _success = json['success'];
    _result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  bool? _success;
  Result? _result;
PlatformsModel copyWith({  bool? success,
  Result? result,
}) => PlatformsModel(  success: success ?? _success,
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
/// data : [{"_id":"645cfed6241433599eb28c76","title":"GoT","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/Ghost of Tsushima Director's Cut.jpg","createdAt":"2023-05-11T14:42:30.078Z","updatedAt":"2023-05-11T14:42:30.078Z","__v":0},{"_id":"6458d848488064e7a2fac80b","title":"Nintendo","createdAt":"2023-05-08T11:08:56.857Z","updatedAt":"2023-05-08T11:08:56.857Z","__v":0},{"_id":"6458d841488064e7a2fac7b5","title":"PS4","createdAt":"2023-05-08T11:08:49.025Z","updatedAt":"2023-05-08T11:08:49.025Z","__v":0},{"_id":"64564c0e488064e7a2ed4568","title":"Takes Two","createdAt":"2023-05-06T12:46:06.199Z","updatedAt":"2023-05-06T12:46:06.199Z","__v":0},{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0}]
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

/// _id : "645cfed6241433599eb28c76"
/// title : "GoT"
/// image : "https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/Ghost of Tsushima Director's Cut.jpg"
/// createdAt : "2023-05-11T14:42:30.078Z"
/// updatedAt : "2023-05-11T14:42:30.078Z"
/// __v : 0

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? image, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _id = id;
    _title = title;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _image = json['image'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _title;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
Data copyWith({  String? id,
  String? title,
  String? image,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get title => _title;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['image'] = _image;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}