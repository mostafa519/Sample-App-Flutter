// To parse this JSON data, do
//
//     final photosModel = photosModelFromJson(jsonString);

import 'dart:convert';

PhotosModel photosModelFromJson(String str) =>
    PhotosModel.fromJson(json.decode(str));

String photosModelToJson(PhotosModel data) => json.encode(data.toJson());

class PhotosModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  PhotosModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory PhotosModel.fromJson(Map<String, dynamic> json) => PhotosModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
