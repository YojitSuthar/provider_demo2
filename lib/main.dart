import 'package:flutter/material.dart';
import 'package:provider_demo2/Provider/change_dart.dart';
import 'package:provider_demo2/Screens/home_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ChangeColor()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),);
  }
}

void main() {
  runApp(MyApp());
}
