import 'package:flutter/material.dart';
import 'package:multi_page_demo/detail_page.dart';
import 'package:multi_page_demo/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: "home",
      routes: {
        "home":(context) => HomePage(),
        "detail_p":(context) => DetailPage()
      },
    );
  }
}
