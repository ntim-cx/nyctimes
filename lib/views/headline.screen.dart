import 'package:flutter/material.dart';
import 'package:news_header/mock/response.mock.dart';
import 'package:news_header/models/news.dart';
import 'package:news_header/shared_widget/news_item.loading.dart';
import 'package:news_header/shared_widget/news_item_tile.dart';

class HeadlineScreen extends StatefulWidget {
  const HeadlineScreen({Key key}) : super(key: key);

  @override
  State<HeadlineScreen> createState() => _HeadlineScreenState();
}

class _HeadlineScreenState extends State<HeadlineScreen> {
  List<News> sampleNews = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var data = MockData.sample["data"];
    for (var e in data) {
      sampleNews.add(News.fromJson(e));
    }
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      leading: const Icon(Icons.menu),
      title: const Text("NY Times Most Popular"),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: ListView.builder(
          itemCount: true ? 10 : sampleNews.length,
          itemBuilder: (context, item) {
            return true
                ? const NewsItemLoading()
                : NewsItemTile(
                    news: sampleNews[item],
                  );
          }),
    );
  }
}
