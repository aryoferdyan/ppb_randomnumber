import 'package:flutter/material.dart';
import 'package:randomnumber/screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 32, 163, 73),
        scaffoldBackgroundColor: Color.fromARGB(255, 40, 60, 160),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 33, 10, 10),
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      home: InputPage(),
    );
  }
}
