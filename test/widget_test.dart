// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

void main() {
  /*testWidgets('Test News Tile with Image', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    final newsTitle = find.byKey(WidgetKeys.newsTitleKey);
    final newsPublishedDate = find.byKey(WidgetKeys.newsPublishDate);
    final newsAuthor = find.byKey(WidgetKeys.newsByLine);
    final newsImage = find.byKey(WidgetKeys.newsImage);
    final newsItem = find.byKey(WidgetKeys.newsItemWidget);

    await tester.pumpWidget(MaterialApp(
      home: NewsItemTile(
        news: News.fromJson(MockData.newsItem),
      ),
    ));
    await tester.tap(newsItem);
    await tester.pump();
    //wait tester.pump();

    expect(newsTitle, findsOneWidget);
    expect(newsPublishedDate, findsOneWidget);
    expect(newsAuthor, findsOneWidget);
    expect(newsImage, findsOneWidget);
  });*/
}
