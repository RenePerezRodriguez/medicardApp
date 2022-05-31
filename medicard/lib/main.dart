import 'package:flutter/material.dart';
import 'package:medicard/source/ui/pages/home_page.dart';
import 'package:medicard/source/ui/pages/sing_up.dart';
import 'package:medicard/source/ui/pages/user_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      initialRoute: 'Home',
      routes: <String, WidgetBuilder>{
        'Home': (BuildContext context) => HomePage(),
        'user_page': (BuildContext) => UserPage(),
        'sing_up': (BuildContext) => SingUp()
      },
    );
  }
}