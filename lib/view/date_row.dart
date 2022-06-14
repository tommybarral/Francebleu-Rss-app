import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/date_parser.dart';

class DateRow extends StatelessWidget {

  final DateTime date;

  const DateRow({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('Mise à jour à : ${DateParser().readableDate(date)}',
          style: const TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
