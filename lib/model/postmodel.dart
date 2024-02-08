// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String id;
  int v;
  String? bookName;
  String? authorName;
  String? publisherName;

  Posts({
    required this.id,
    required this.v,
    this.bookName,
    this.authorName,
    this.publisherName,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    id: json["_id"],
    v: json["__v"],
    bookName: json["bookName"],
    authorName: json["authorName"],
    publisherName: json["publisherName"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "__v": v,
    "bookName": bookName,
    "authorName": authorName,
    "publisherName": publisherName,
  };
}
