import 'package:flutter/material.dart';
import 'package:rss_app/models/article.dart';
import 'package:rss_app/models/feed_parser.dart';
import 'package:rss_app/view/date_row.dart';


class FeedController extends StatelessWidget {
  const FeedController({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: FeedParser().getFeed(),
        builder: (context, snapshot) {
          final articles = snapshot.data ?? [];
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, offset: Offset(-5, 0), blurRadius: 5),
                      BoxShadow(color: Colors.grey, offset: Offset(0, 5), blurRadius: 5),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(articles[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.black26,
                        padding: const EdgeInsets.all(10.0),
                        child: Text(articles[index].title, textAlign: TextAlign.start, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(articles[index].description, style: const TextStyle(fontSize: 20),),
                ),
              );
            },
          );

        });
  }


}