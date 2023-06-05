import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/photoModel.dart';

String mainURL = "https://jsonplaceholder.typicode.com/";

class PhotosService {
  String photoLink = "${mainURL}photos";
  Future<List<PhotosModel>> photoData() async {
    List<PhotosModel> photos = [];
    try {
      var respond = await Dio().get(photoLink);
      respond.data.forEach((element) {
        PhotosModel photo = PhotosModel.fromJson(element);
        photos.add(photo);
      });
    } catch (e) {
      print(e);
    }
    return photos;
  }
}
