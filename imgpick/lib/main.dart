import 'package:flutter/material.dart';
import 'package:imgpick/HomeScreen.dart';
import 'package:imgpick/InventerCode/ImageHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: UploadImage()
        // HomeScreen(),
        );
  }
}
