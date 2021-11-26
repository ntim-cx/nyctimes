import 'package:flutter/material.dart';
import 'package:news_header/config/router.dart';
import 'package:news_header/config/router.dart' as router;
import 'package:news_header/config/theme.dart' as theme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NycTimes',
      theme: theme.primaryTheme,
      onGenerateRoute: router.generateRoute,
      initialRoute: AppRoutes.headlines,
    );
  }
}
