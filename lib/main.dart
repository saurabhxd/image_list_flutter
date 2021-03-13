import 'package:flutter/material.dart';
import 'package:image_list_flutter/login.dart';
import 'package:image_list_flutter/myHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image list',
      home: LoginPage(),
    );
  }
}









