import 'dart:convert';
/// success : true
/// result : {"totalPages":1,"data":[{"_id":"644107057f8350300e366a2b","title":"Spiderman2","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/spider 2.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0},{"_id":"6458d836488064e7a2fac75b","title":"First Person Shooting","createdAt":"2023-05-08T11:08:38.273Z","updatedAt":"2023-05-08T11:08:38.273Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Spider-Man is an action-adventure video game.","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P1","level":2,"quantity":0,"createdAt":"2023-04-20T09:33:58.015Z","updatedAt":"2023-05-18T15:45:31.414Z","inStock":3,"allStocks":3},{"_id":"644ab97b252b0f1953aade25","title":"Pubg2","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/pubg.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0},{"_id":"645cfe8d241433599eb28965","title":"Comedy","createdAt":"2023-05-11T14:41:17.344Z","updatedAt":"2023-05-18T15:01:48.422Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Very noice gameee!!","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P2","level":2,"quantity":0,"createdAt":"2023-04-27T18:05:47.293Z","updatedAt":"2023-05-05T15:30:26.185Z","inStock":3,"allStocks":6},{"_id":"6454dc375dc65cff768e3cf0","title":"Batman","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/batman 2.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Batman: Arkham is a series of action-adventure video games developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment. The games are based on the popular DC Comics superhero Batman and feature an open-world environment set in the fictional Gotham City. In the games, you take on the role of Batman and must use your detective skills, gadgets, and combat abilities to fight crime and protect the city. You'll face off against a variety of villains from Batman's rogues' gallery, including the likes of the Joker, Bane, and the Riddler.","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P5","level":2,"quantity":0,"createdAt":"2023-05-05T10:36:39.374Z","updatedAt":"2023-05-05T15:17:11.049Z","inStock":0,"allStocks":0},{"_id":"6454dc421d1abd5fa0f14050","title":"Batman","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/batman.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Batman: Arkham is a series of action-adventure video games developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment. The games are based on the popular DC Comics superhero Batman and feature an open-world environment set in the fictional Gotham City. In the games, you take on the role of Batman and must use your detective skills, gadgets, and combat abilities to fight crime and protect the city. You'll face off against a variety of villains from Batman's rogues' gallery, including the likes of the Joker, Bane, and the Riddler.","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P6","level":2,"quantity":0,"createdAt":"2023-05-05T10:36:50.952Z","updatedAt":"2023-05-05T17:43:04.042Z","inStock":3,"allStocks":4},{"_id":"64551497488064e7a2e6a9bb","title":"Fast V","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/car.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":1000,"isKid":false,"description":"Car racing game","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P8","level":0,"quantity":0,"createdAt":"2023-05-05T14:37:11.911Z","updatedAt":"2023-05-17T17:19:49.106Z","inStock":93,"allStocks":102},{"_id":"6463ff3cffbeb54e5c892092","title":"a b","image":null,"genre":[],"tags":[],"platform":{"_id":"6458d848488064e7a2fac80b","title":"Nintendo","createdAt":"2023-05-08T11:08:56.857Z","updatedAt":"2023-05-08T11:08:56.857Z","__v":0},"sellingPrice":null,"isKid":false,"description":"ab","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P9","level":0,"quantity":0,"createdAt":"2023-05-16T22:10:04.052Z","updatedAt":"2023-05-16T22:10:04.052Z","inStock":0,"allStocks":0}],"limit":25,"currentPage":1}

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));
String productsModelToJson(ProductsModel data) => json.encode(data.toJson());
class ProductsModel {
  ProductsModel({
      bool? success, 
      Result? result,}){
    _success = success;
    _result = result;
}

  ProductsModel.fromJson(dynamic json) {
    _success = json['success'];
    _result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  bool? _success;
  Result? _result;
ProductsModel copyWith({  bool? success,
  Result? result,
}) => ProductsModel(  success: success ?? _success,
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
/// data : [{"_id":"644107057f8350300e366a2b","title":"Spiderman2","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/spider 2.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0},{"_id":"6458d836488064e7a2fac75b","title":"First Person Shooting","createdAt":"2023-05-08T11:08:38.273Z","updatedAt":"2023-05-08T11:08:38.273Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Spider-Man is an action-adventure video game.","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P1","level":2,"quantity":0,"createdAt":"2023-04-20T09:33:58.015Z","updatedAt":"2023-05-18T15:45:31.414Z","inStock":3,"allStocks":3},{"_id":"644ab97b252b0f1953aade25","title":"Pubg2","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/pubg.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0},{"_id":"645cfe8d241433599eb28965","title":"Comedy","createdAt":"2023-05-11T14:41:17.344Z","updatedAt":"2023-05-18T15:01:48.422Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Very noice gameee!!","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P2","level":2,"quantity":0,"createdAt":"2023-04-27T18:05:47.293Z","updatedAt":"2023-05-05T15:30:26.185Z","inStock":3,"allStocks":6},{"_id":"6454dc375dc65cff768e3cf0","title":"Batman","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/batman 2.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Batman: Arkham is a series of action-adventure video games developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment. The games are based on the popular DC Comics superhero Batman and feature an open-world environment set in the fictional Gotham City. In the games, you take on the role of Batman and must use your detective skills, gadgets, and combat abilities to fight crime and protect the city. You'll face off against a variety of villains from Batman's rogues' gallery, including the likes of the Joker, Bane, and the Riddler.","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P5","level":2,"quantity":0,"createdAt":"2023-05-05T10:36:39.374Z","updatedAt":"2023-05-05T15:17:11.049Z","inStock":0,"allStocks":0},{"_id":"6454dc421d1abd5fa0f14050","title":"Batman","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/batman.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":2000,"isKid":false,"description":"Batman: Arkham is a series of action-adventure video games developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment. The games are based on the popular DC Comics superhero Batman and feature an open-world environment set in the fictional Gotham City. In the games, you take on the role of Batman and must use your detective skills, gadgets, and combat abilities to fight crime and protect the city. You'll face off against a variety of villains from Batman's rogues' gallery, including the likes of the Joker, Bane, and the Riddler.","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P6","level":2,"quantity":0,"createdAt":"2023-05-05T10:36:50.952Z","updatedAt":"2023-05-05T17:43:04.042Z","inStock":3,"allStocks":4},{"_id":"64551497488064e7a2e6a9bb","title":"Fast V","image":"https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/car.jpg","genre":[{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0}],"region":{"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0},"tags":[{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}],"platform":{"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0},"sellingPrice":1000,"isKid":false,"description":"Car racing game","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P8","level":0,"quantity":0,"createdAt":"2023-05-05T14:37:11.911Z","updatedAt":"2023-05-17T17:19:49.106Z","inStock":93,"allStocks":102},{"_id":"6463ff3cffbeb54e5c892092","title":"a b","image":null,"genre":[],"tags":[],"platform":{"_id":"6458d848488064e7a2fac80b","title":"Nintendo","createdAt":"2023-05-08T11:08:56.857Z","updatedAt":"2023-05-08T11:08:56.857Z","__v":0},"sellingPrice":null,"isKid":false,"description":"ab","type":"New","show":true,"rents":0,"averageRentTime":0,"code":"P9","level":0,"quantity":0,"createdAt":"2023-05-16T22:10:04.052Z","updatedAt":"2023-05-16T22:10:04.052Z","inStock":0,"allStocks":0}]
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

/// _id : "644107057f8350300e366a2b"
/// title : "Spiderman2"
/// image : "https://emergen.s3.ap-southeast-1.amazonaws.com/gamestack/spider 2.jpg"
/// genre : [{"_id":"640f2f841c431695f8a82b17","title":"Action","createdAt":"2023-03-13T14:13:24.653Z","updatedAt":"2023-05-08T07:20:37.318Z","__v":0},{"_id":"6458d836488064e7a2fac75b","title":"First Person Shooting","createdAt":"2023-05-08T11:08:38.273Z","updatedAt":"2023-05-08T11:08:38.273Z","__v":0}]
/// region : {"_id":"641aadbbbcb8a7cbc30914ba","title":"Islamabad","createdAt":"2023-03-22T07:26:51.316Z","updatedAt":"2023-03-22T07:26:51.316Z","__v":0}
/// tags : [{"_id":"641aadd4bcb8a7cbc30914c3","title":"Multiple-Player","createdAt":"2023-03-22T07:27:16.680Z","updatedAt":"2023-03-22T07:27:16.680Z","__v":0}]
/// platform : {"_id":"641aadf3bcb8a7cbc30914c9","title":"PS5","createdAt":"2023-03-22T07:27:47.954Z","updatedAt":"2023-03-22T07:27:47.954Z","__v":0}
/// sellingPrice : 2000
/// isKid : false
/// description : "Spider-Man is an action-adventure video game."
/// type : "New"
/// show : true
/// rents : 0
/// averageRentTime : 0
/// code : "P1"
/// level : 2
/// quantity : 0
/// createdAt : "2023-04-20T09:33:58.015Z"
/// updatedAt : "2023-05-18T15:45:31.414Z"
/// inStock : 3
/// allStocks : 3

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? image, 
      List<Genre>? genre, 
      Region? region, 
      List<Tags>? tags, 
      Platform? platform, 
      num? sellingPrice, 
      bool? isKid, 
      String? description, 
      String? type, 
      bool? show, 
      num? rents, 
      num? averageRentTime, 
      String? code, 
      num? level, 
      num? quantity, 
      String? createdAt, 
      String? updatedAt, 
      num? inStock, 
      num? allStocks,}){
    _id = id;
    _title = title;
    _image = image;
    _genre = genre;
    _region = region;
    _tags = tags;
    _platform = platform;
    _sellingPrice = sellingPrice;
    _isKid = isKid;
    _description = description;
    _type = type;
    _show = show;
    _rents = rents;
    _averageRentTime = averageRentTime;
    _code = code;
    _level = level;
    _quantity = quantity;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _inStock = inStock;
    _allStocks = allStocks;
}

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _image = json['image'];
    if (json['genre'] != null) {
      _genre = [];
      json['genre'].forEach((v) {
        _genre?.add(Genre.fromJson(v));
      });
    }
    _region = json['region'] != null ? Region.fromJson(json['region']) : null;
    if (json['tags'] != null) {
      _tags = [];
      json['tags'].forEach((v) {
        _tags?.add(Tags.fromJson(v));
      });
    }
    _platform = json['platform'] != null ? Platform.fromJson(json['platform']) : null;
    _sellingPrice = json['sellingPrice'];
    _isKid = json['isKid'];
    _description = json['description'];
    _type = json['type'];
    _show = json['show'];
    _rents = json['rents'];
    _averageRentTime = json['averageRentTime'];
    _code = json['code'];
    _level = json['level'];
    _quantity = json['quantity'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _inStock = json['inStock'];
    _allStocks = json['allStocks'];
  }
  String? _id;
  String? _title;
  String? _image;
  List<Genre>? _genre;
  Region? _region;
  List<Tags>? _tags;
  Platform? _platform;
  num? _sellingPrice;
  bool? _isKid;
  String? _description;
  String? _type;
  bool? _show;
  num? _rents;
  num? _averageRentTime;
  String? _code;
  num? _level;
  num? _quantity;
  String? _createdAt;
  String? _updatedAt;
  num? _inStock;
  num? _allStocks;
Data copyWith({  String? id,
  String? title,
  String? image,
  List<Genre>? genre,
  Region? region,
  List<Tags>? tags,
  Platform? platform,
  num? sellingPrice,
  bool? isKid,
  String? description,
  String? type,
  bool? show,
  num? rents,
  num? averageRentTime,
  String? code,
  num? level,
  num? quantity,
  String? createdAt,
  String? updatedAt,
  num? inStock,
  num? allStocks,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  image: image ?? _image,
  genre: genre ?? _genre,
  region: region ?? _region,
  tags: tags ?? _tags,
  platform: platform ?? _platform,
  sellingPrice: sellingPrice ?? _sellingPrice,
  isKid: isKid ?? _isKid,
  description: description ?? _description,
  type: type ?? _type,
  show: show ?? _show,
  rents: rents ?? _rents,
  averageRentTime: averageRentTime ?? _averageRentTime,
  code: code ?? _code,
  level: level ?? _level,
  quantity: quantity ?? _quantity,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  inStock: inStock ?? _inStock,
  allStocks: allStocks ?? _allStocks,
);
  String? get id => _id;
  String? get title => _title;
  String? get image => _image;
  List<Genre>? get genre => _genre;
  Region? get region => _region;
  List<Tags>? get tags => _tags;
  Platform? get platform => _platform;
  num? get sellingPrice => _sellingPrice;
  bool? get isKid => _isKid;
  String? get description => _description;
  String? get type => _type;
  bool? get show => _show;
  num? get rents => _rents;
  num? get averageRentTime => _averageRentTime;
  String? get code => _code;
  num? get level => _level;
  num? get quantity => _quantity;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get inStock => _inStock;
  num? get allStocks => _allStocks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['image'] = _image;
    if (_genre != null) {
      map['genre'] = _genre?.map((v) => v.toJson()).toList();
    }
    if (_region != null) {
      map['region'] = _region?.toJson();
    }
    if (_tags != null) {
      map['tags'] = _tags?.map((v) => v.toJson()).toList();
    }
    if (_platform != null) {
      map['platform'] = _platform?.toJson();
    }
    map['sellingPrice'] = _sellingPrice;
    map['isKid'] = _isKid;
    map['description'] = _description;
    map['type'] = _type;
    map['show'] = _show;
    map['rents'] = _rents;
    map['averageRentTime'] = _averageRentTime;
    map['code'] = _code;
    map['level'] = _level;
    map['quantity'] = _quantity;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['inStock'] = _inStock;
    map['allStocks'] = _allStocks;
    return map;
  }

}

/// _id : "641aadf3bcb8a7cbc30914c9"
/// title : "PS5"
/// createdAt : "2023-03-22T07:27:47.954Z"
/// updatedAt : "2023-03-22T07:27:47.954Z"
/// __v : 0

Platform platformFromJson(String str) => Platform.fromJson(json.decode(str));
String platformToJson(Platform data) => json.encode(data.toJson());
class Platform {
  Platform({
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

  Platform.fromJson(dynamic json) {
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
Platform copyWith({  String? id,
  String? title,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Platform(  id: id ?? _id,
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

/// _id : "641aadd4bcb8a7cbc30914c3"
/// title : "Multiple-Player"
/// createdAt : "2023-03-22T07:27:16.680Z"
/// updatedAt : "2023-03-22T07:27:16.680Z"
/// __v : 0

Tags tagsFromJson(String str) => Tags.fromJson(json.decode(str));
String tagsToJson(Tags data) => json.encode(data.toJson());
class Tags {
  Tags({
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

  Tags.fromJson(dynamic json) {
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
Tags copyWith({  String? id,
  String? title,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Tags(  id: id ?? _id,
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

/// _id : "641aadbbbcb8a7cbc30914ba"
/// title : "Islamabad"
/// createdAt : "2023-03-22T07:26:51.316Z"
/// updatedAt : "2023-03-22T07:26:51.316Z"
/// __v : 0

Region regionFromJson(String str) => Region.fromJson(json.decode(str));
String regionToJson(Region data) => json.encode(data.toJson());
class Region {
  Region({
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

  Region.fromJson(dynamic json) {
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
Region copyWith({  String? id,
  String? title,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Region(  id: id ?? _id,
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

/// _id : "640f2f841c431695f8a82b17"
/// title : "Action"
/// createdAt : "2023-03-13T14:13:24.653Z"
/// updatedAt : "2023-05-08T07:20:37.318Z"
/// __v : 0

Genre genreFromJson(String str) => Genre.fromJson(json.decode(str));
String genreToJson(Genre data) => json.encode(data.toJson());
class Genre {
  Genre({
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

  Genre.fromJson(dynamic json) {
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
Genre copyWith({  String? id,
  String? title,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Genre(  id: id ?? _id,
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