import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'view/home_page.dart';

void main() {
  initializeDateFormatting("ja-JP").then((_) => runApp(ProviderScope(
        child: MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STVテックインターン',
      home: HomePage(),
    );
  }
}
