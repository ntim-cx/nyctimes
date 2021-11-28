import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDioClient extends Mock implements Dio {
  @override
  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic> queryParameters,
      Options options,
      CancelToken cancelToken,
      ProgressCallback onReceiveProgress}) {
    // TODO: implement get
    throw UnimplementedError();
  }
}

void main() {
  group("Util tests", () {});
}
