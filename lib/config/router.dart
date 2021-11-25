import 'package:flutter/material.dart';
import 'package:news_header/views/headline.screen.dart';
import 'package:news_header/views/news.screen.dart';

class AppRoutes {
  static const String headlines = "headlines";
  static const String news = "news";
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.headlines:
      return MaterialPageRoute(builder: (context) => const HeadlineScreen());
    case AppRoutes.news:
      return MaterialPageRoute(
          builder: (context) => NewsScreen(news: settings.arguments));
    default:
      return MaterialPageRoute(builder: (context) => const HeadlineScreen());
  }
}
