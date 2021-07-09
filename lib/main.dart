import 'package:flutter/material.dart';
//import 'package:telugu_vantakalu/screens/detailspage.dart';
import 'package:telugu_vantakalu/screens/gridview.dart';
import 'package:telugu_vantakalu/screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Grid.id: (context) => Grid(),
      },
    );
  }
}
