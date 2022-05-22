import 'package:flutter/material.dart';
import 'package:testpro/main_model.dart';
import 'package:testpro/main_page.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(ChangeNotifierProvider<MainModel>(
      create: (context) => MainModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
