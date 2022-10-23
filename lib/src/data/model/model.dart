// model oluştururken kullandığım web sitesi https://app.quicktype.io/
class MyModel {
  MyModel({this.id, this.title, this.body});

  late int? id;
  late String? title;
  late String? body;

  MyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = title;
    data['body'] = body;
    return data;
  }
}



// To parse this JSON data, do
//
//     final myModel = myModelFromJson(jsonString);



// List<MyModel> myModelFromJson(String str) => List<MyModel>.from(json.decode(str).map((x) => MyModel.fromJson(x)));

// String myModelToJson(List<MyModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class MyModel {
//     MyModel({
//         required this.userId,
//         required this.id,
//         required this.title,
//         required this.body,
//     });

//     int userId;
//     int id;
//     String title;
//     String body;

//     factory MyModel.fromJson(Map<String, dynamic> json) => MyModel(
//         userId: json["userId"] == null ? null : json["userId"],
//         id: json["id"] == null ? null : json["id"],
//         title: json["title"] == null ? null : json["title"],
//         body: json["body"] == null ? null : json["body"],
//     );

//     Map<String, dynamic> toJson() => {
//         "userId": userId == null ? null : userId,
//         "id": id == null ? null : id,
//         "title": title == null ? null : title,
//         "body": body == null ? null : body,
//     };
// }
