import 'package:flutter/material.dart';
import 'package:news_header/config/constants.dart';
import 'package:news_header/config/router.dart';
import 'package:news_header/config/utils.dart';
import 'package:news_header/models/news.dart';

class NewsItemTile extends StatelessWidget {
  final News news;

  const NewsItemTile({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: WidgetKeys.newsItemWidget,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      onPressed: () =>
          Navigator.pushNamed(context, AppRoutes.news, arguments: news),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: (news.media.isNotEmpty)
                ? Image.network(
                    news.media[0].mediaMetadata[0].url,
                    key: WidgetKeys.newsImage,
                    width: 50,
                  )
                : Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  ),
          ),
          Utils.horizontalSpacer(),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  key: WidgetKeys.newsTitleKey,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Utils.verticalSpacer(space: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        news.byline,
                        key: WidgetKeys.newsByLine,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    Utils.verticalSpacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.date_range,
                          size: 16,
                          color: Colors.grey,
                        ),
                        Utils.horizontalSpacer(space: 8),
                        Text(
                          news.publishedDate,
                          key: WidgetKeys.newsPublishDate,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Utils.verticalSpacer(),
          const Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}
