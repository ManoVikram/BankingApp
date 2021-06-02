import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Banking App",
      debugShowCheckedModeBanner: false,
      home: Banking(),
    );
  }
}

class Banking extends StatelessWidget {
  const Banking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

void main() {
  runApp(MyApp());
}
