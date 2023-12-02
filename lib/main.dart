import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page/home_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "API Example",
      initialRoute: "/",
      routes: {
        '/': (context) => Home_Page(),
      },
    );
  }
}
