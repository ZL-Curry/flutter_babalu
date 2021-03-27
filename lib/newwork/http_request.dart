import 'package:dio/dio.dart';
import 'http_config.dart';
class HttpRequest {
  static Future request(String url, {String methods = 'get', Map<String, dynamic> params }) async {
    // 1.创建DIO实例
    BaseOptions baseOptions = BaseOptions(
      baseUrl:BASE_URL,
      connectTimeout: TIMEOUT
    );
    final dio = Dio(baseOptions);
    // 2. 发送网络请求
    Options options = Options(method: methods);
    try {
      final result = await dio.request(url, queryParameters: params, options: options);
      return result;
    } on DioError catch(error) {
      throw error;
    }
  }
}
