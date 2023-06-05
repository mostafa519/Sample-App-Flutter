import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/albumsModel.dart';

String mainURL = "https://jsonplaceholder.typicode.com/";

class albumService {
  String userLink = "${mainURL}albums";
  Future<List<AlbumModel>> albumData() async {
    List<AlbumModel> albums = [];
    try {
      var respond = await Dio().get(userLink);
      respond.data.forEach((element) {
        AlbumModel album = AlbumModel.fromJson(element);
        albums.add(album);
      });
    } catch (e) {
      print(e);
    }
    return albums;
  }
}
