import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home : Scaffold(
          body: Container(
            child: const Center(
              child: Text(
                'Medicard',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none),
              ),
            ),
          ),
        )
    );
  }
}