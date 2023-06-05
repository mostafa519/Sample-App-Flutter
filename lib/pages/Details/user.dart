import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final String text;

  // receive data from the FirstScreen as a parameter
  UserName({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('The Name   ${text}')),
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
