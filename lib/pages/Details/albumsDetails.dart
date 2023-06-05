import 'package:flutter/material.dart';

class AlbumDetails extends StatelessWidget {
  final String text;

  // receive data from the FirstScreen as a parameter
  AlbumDetails({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Albums')),
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
