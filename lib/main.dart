import 'package:flutter/material.dart';
import 'package:rss_app/controllers/feed_controller.dart';
import 'package:rss_app/controllers/home_controller.dart';
import 'package:rss_app/screens/francebleu_rss.dart';
import 'package:rss_app/rss_hub.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(),
    );
  }
}
