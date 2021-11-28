import 'package:flutter/material.dart';
import 'package:news_header/config/utils.dart';
import 'package:shimmer/shimmer.dart';

class NewsItemLoading extends StatelessWidget {
  const NewsItemLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.1),
      highlightColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.grey,
              ),
            ),
            Utils.horizontalSpacer(),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 14,
                    color: Colors.grey,
                  ),
                  Utils.verticalSpacer(space: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 14,
                        color: Colors.grey,
                      ),
                      Utils.verticalSpacer(),
                      Container(
                        width: 70,
                        height: 14,
                        color: Colors.grey,
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
      ),
    );
  }
}
