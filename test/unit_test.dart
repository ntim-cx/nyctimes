import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:news_header/config/constants.dart';
import 'package:news_header/mock/response.mock.dart';
import 'package:news_header/models/news.dart';
import 'package:news_header/providers/headlines.provider.dart';

void main() {
  group("Api tests Success", () {
    final provider = HeadlineProvider();
    final dioAdapter = DioAdapter(dio: provider.http.dio);
    provider.http.dio.httpClientAdapter = dioAdapter;
    test("Success Response", () async {
      dioAdapter.onGet(Api.headlines, (server) {
        server.reply(200, MockData.sample);
      });
      expect(await provider.index(), isA<List<News>>());
    });
  });

  group("Api tests Failure", () {
    final provider = HeadlineProvider();
    final dioAdapter = DioAdapter(dio: provider.http.dio);
    provider.http.dio.httpClientAdapter = dioAdapter;
    test("Api not found", () async {
      dioAdapter.onGet(Api.headlines, (server) {
        server.reply(404, null, statusMessage: "Resource not found");
      });
      expect(await provider.index(), []);
    });
    test("Server error", () async {
      dioAdapter.onGet(Api.headlines, (server) {
        server.reply(500, null, statusMessage: "Server Error");
      });
      expect(await provider.index(), []);
    });
  });
}
