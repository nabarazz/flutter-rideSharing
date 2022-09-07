import 'package:flutter/material.dart';

import 'Login/login.dart';
import 'models/test_app.dart';
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Login(),
        '/TestApp': (context) => const TestApp(),
      },
    );

  }
}
