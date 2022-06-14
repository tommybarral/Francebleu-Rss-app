import 'package:flutter/material.dart';
import 'package:rss_app/controllers/feed_controller.dart';

class HomeController extends StatelessWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mon flux RSS'), centerTitle: true, backgroundColor: Colors.transparent,),
      body: const FeedController(),
    );
  }
}
