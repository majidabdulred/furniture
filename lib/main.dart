import 'package:flutter/material.dart';
import 'package:furniture/pages/page1.dart';
import 'package:furniture/pages/page2.dart';
import 'package:get/get_navigation/get_navigation.dart';

Future<void> main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}

class CustomView extends StatelessWidget {
  const CustomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Custom View"),
      ),
    );
  }
}
