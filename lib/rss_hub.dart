import 'package:flutter/material.dart';
import 'package:rss_app/constants.dart';

class RssHub extends StatelessWidget {
  const RssHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('RSS Hub'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GridTile(
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Image.network(franceBleu),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
