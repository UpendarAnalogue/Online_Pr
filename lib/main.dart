import 'package:flutter/material.dart';
import 'package:online_pr/Online-Pr/online_pr.dart';
 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Print Receipt',
      home:  OnlinePr(),
      debugShowCheckedModeBanner: false,
    );
  }
}

 