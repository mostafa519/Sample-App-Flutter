import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/userModel.dart';

String mainURL = "https://jsonplaceholder.typicode.com/";

class UserService {
  String userLink = "${mainURL}users";
  Future<List<UserDataModel>> userData() async {
    List<UserDataModel> users = [];
    try {
      var respond = await Dio().get(userLink);
      respond.data.forEach((element) {
        UserDataModel user = UserDataModel.fromJson(element);
        users.add(user);
      });
    } catch (e) {
      print(e);
    }
    return users;
  }
}
