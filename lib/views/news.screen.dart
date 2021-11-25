import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_header/models/news.dart';

class NewsScreen extends StatelessWidget {
  final News news;
  const NewsScreen({Key key, @required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Text(
                        'text $i',
                        style: const TextStyle(fontSize: 16.0),
                      ));
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
