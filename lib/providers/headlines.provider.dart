import 'package:news_header/config/constants.dart';
import 'package:news_header/models/api_response.dart';
import 'package:news_header/models/news.dart';
import 'package:news_header/providers/base.provider.dart';

abstract class BaseHeadlineProvider {
  Future<List<News>> index();
}

class HeadlineProvider extends BaseProvider implements BaseHeadlineProvider {
  List<News> sampleNews = [];

  @override
  Future<List<News>> index() async {
    final response = await http.get(Api.headlines);
    var apiResponse = ApiResponse.parse(response);
    if (apiResponse.success) {
      var data = apiResponse.data;
      sampleNews.addAll(data.map((e) => News.fromJson(e)).toList());
    }
    return sampleNews;
  }
}
