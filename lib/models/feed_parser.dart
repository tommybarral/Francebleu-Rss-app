import 'package:rss_app/models/article.dart';
import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

class FeedParser {
  Future<List<Article>> getFeed() async {
    List<Article> articles = [];
    final url = Uri.parse('https://www.francebleu.fr/rss/a-la-une.xml');
    final response = await http.get(url);
    final rssFeedPackage = RssFeed.parse(response.body);
    final items = rssFeedPackage.items;
    if (items != null) {
      articles = items.map((item) => Article(item: item)).toList();
    }
    return articles;
  }
}