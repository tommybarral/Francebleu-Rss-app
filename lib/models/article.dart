import 'package:webfeed/domain/rss_item.dart';


class Article {
  String? _title;
  String? _description;
  String? _imageUrl;
  DateTime? _pubDate;

  String get title => _title ?? '';
  String get description => _description ?? '';
  String get imageUrl => _imageUrl ?? '';
  DateTime get date => _pubDate ?? DateTime.now();

  Article({required RssItem item}) {
    _title = item.title;
    _description = item.description;
    _imageUrl = item.enclosure?.url;
    _pubDate = item.pubDate;
  }
}

