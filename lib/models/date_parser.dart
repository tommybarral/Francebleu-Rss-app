import 'package:intl/intl.dart';

class DateParser {
  String readableDate(DateTime dateTime) {
    DateFormat dateFormat = DateFormat.yMMMMEEEEd();
    String correctFormat = dateFormat.format(dateTime);
    return correctFormat;
  }
}