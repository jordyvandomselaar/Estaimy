import 'package:estaimy/widgets/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        cardColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
      ),
      home: SafeArea(
        child: HomeScreen(),
      )
    );
  }
}

