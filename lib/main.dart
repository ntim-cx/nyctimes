import 'package:flutter/material.dart';
import 'package:news_header/config/router.dart';
import 'package:news_header/config/router.dart' as router;

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: AppRoutes.headlines,
    );
  }
}
