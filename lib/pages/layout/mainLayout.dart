import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Albums/albums.dart';
import 'package:flutter_application_1/pages/chat/chat.dart';
import 'package:flutter_application_1/users/user.dart';

class main_Layout extends StatefulWidget {
  const main_Layout({super.key});

  @override
  State<main_Layout> createState() => _main_LayoutState();
}

class _main_LayoutState extends State<main_Layout> {
  int _counts = 0;
  List<Widget> pages = [chat(), UsersPage(), AlbumPage()];
  // List<Widget>pages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _counts,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Users"),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album_outlined), label: "Albums"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.photo_library_outlined), label: "Photos"),
          ],
          onTap: (index) {
            _counts = index;
            // print(_counts);
            setState(() {});
          },
        ),
        body: pages[_counts]);
  }
}
