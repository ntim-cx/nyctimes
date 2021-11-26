import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_header/config/utils.dart';
import 'package:news_header/models/news.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsScreen extends StatelessWidget {
  final News news;

  const NewsScreen({Key key, @required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Colors.deepOrange,
            ),
          ),
          Utils.horizontalSpacer(),
          Flexible(
            child: Text(
              news.title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );

    final authors = Text(
      news.byline,
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );

    final keywords = Text(
      news.adxKeywords,
      style: Theme.of(context).textTheme.caption,
    );

    final section = Container(
      child: Text(
        news.section,
        style: const TextStyle(color: Colors.white),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.deepOrange),
    );

    final abstract = Text(news.abstract);

    /*final openLink = Row(
      children: [
        const Text(
          "Want to read the full story?",
          style: TextStyle(),
        ),
        Utils.horizontalSpacer(),
        MaterialButton(
          onPressed: () => {launch(news.url)},
          child: const Text("Go to Story"),
          color: Colors.green,
        )
      ],
    );*/

    final openLink = RichText(
      text: TextSpan(
          text: "Want to red the full story? ",
          style: TextStyle(color: Colors.black.withOpacity(0.2), fontSize: 16),
          children: [
            TextSpan(
              text: "Find it here",
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(news.url),
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            )
          ]),
    );

    final carousel = CarouselSlider(
      options: CarouselOptions(
        height: 300.0,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlay: true,
        disableCenter: false,
        enableInfiniteScroll: false,
        viewportFraction: 1,
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: news.media.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  //margin: const EdgeInsts.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Utils.randomOpaqueColor()),
                  child: Image.network(
                    i.mediaMetadata[i.mediaMetadata.length - 1].url,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );

    final body = Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          abstract,
          Utils.verticalSpacer(),
          authors,
          Utils.verticalSpacer(space: 8),
          keywords,
          Utils.verticalSpacer(space: 8),
          section,
          Utils.verticalSpacer(space: 16),
          openLink
        ],
      ),
    );

    return Scaffold(
      // No appbar provided to the Scaffold, only a body with a
      // CustomScrollView.
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 250.0,
                floating: true,
                snap: true,
                //actionsIconTheme: IconThemeData(opacity: 0.0),
                flexibleSpace: carousel,
                actions: [
                  IconButton(
                      onPressed: () => launch(news.url),
                      icon: const Icon(Icons.launch))
                ],
              ),
            ];
          },
          body: body),
    );

    return Scaffold(
      body: ListView(
        children: [
          carousel,
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                abstract,
                Utils.verticalSpacer(),
                authors,
                Utils.verticalSpacer(space: 8),
                keywords,
                Utils.verticalSpacer(space: 8),
                section,
                openLink
              ],
            ),
          )
        ],
      ),
    );
  }
}
