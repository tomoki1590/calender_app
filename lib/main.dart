import 'package:calendar/model/new_calendar.dart';
import 'package:flutter/material.dart'
    show BuildContext, Key, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:intl/date_symbol_data_local.dart' show initializeDateFormatting;

void main() {
  initializeDateFormatting("ja-JP").then((_) => runApp(const ProviderScope(
        child: MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calender',
      home: Calender1(),
    );
  }
}
