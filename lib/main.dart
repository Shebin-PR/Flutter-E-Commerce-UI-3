import 'package:flutter/material.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'payment',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
