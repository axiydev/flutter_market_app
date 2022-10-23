import 'package:dio/dio.dart';

class DioFactory {
  const DioFactory(this._baseUrl, this._appTimeStamplInterceptor,
      this._marvelApiAuthInterceptor);
  final String _baseUrl;
  final AppTimeStamplInterceptor _appTimeStamplInterceptor;
  final MarvelApiAuthInterceptor _marvelApiAuthInterceptor;
  Dio create() => Dio(_createBaseOptions)
    ..interceptors
        .addAll({_appTimeStamplInterceptor, _marvelApiAuthInterceptor});

  BaseOptions get _createBaseOptions => BaseOptions(
      baseUrl: _baseUrl,
      receiveTimeout: 15000,
      sendTimeout: 15000,
      connectTimeout: 5000,
      queryParameters: {},
      headers: {});
}

class AppTimeStamplInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['ts'] =
        DateTime.now().millisecondsSinceEpoch.toString();
    return super.onRequest(options, handler);
  }
}

class MarvelApiAuthInterceptor extends Interceptor {
  MarvelApiAuthInterceptor(this._apiKeyService, this._publicAuthKey);

  final String _publicAuthKey;
  final String? _apiKeyService;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    const privateApiKey = '345bn4n5n4bv6n5bnvm';
    options.queryParameters['ts'] = timeStamp;
    options.queryParameters['apiKey'] = _publicAuthKey;
    options.queryParameters['hash'] = '$timeStamp$privateApiKey$_publicAuthKey';
    super.onRequest(options, handler);
  }
}
