import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/userModel.dart';

class userDetails extends StatelessWidget {
  final UserDataModel mode;
  // receive data from the FirstScreen as a parameter
  userDetails({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(mode.name)),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mode.name,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(mode.phone)
            ],
          ),
        ));
  }
}
