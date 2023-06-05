import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mustafa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: main_Layout(),
      // home: UsersPage(),

      home: logIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
