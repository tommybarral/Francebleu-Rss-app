import 'package:flutter/material.dart';
import 'package:rss_app/models/article.dart';
import 'package:rss_app/models/feed_parser.dart';

class FranceBleuRSS extends StatefulWidget {
  const FranceBleuRSS({Key? key}) : super(key: key);

  @override
  State<FranceBleuRSS> createState() => _FranceBleuRSSState();
}

class _FranceBleuRSSState extends State<FranceBleuRSS> {

  List<Article> articles = [];

  getFeed() {
    FeedParser().getFeed().then((newArticles) => setState(() => articles = newArticles));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flux RSS'), centerTitle: true,),
      floatingActionButton: FloatingActionButton(
        onPressed: getFeed,
        child: const Icon(Icons.repeat, color: Colors.white, size: 22,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: getFeed,
              leading: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(articles[index].imageUrl),
                  )
                ),
              ),
              title: Text(articles[index].title),
              subtitle: Text('mis en ligne à '),
              trailing: Icon(Icons.arrow_forward),
            );
          }),
    );
  }
}
