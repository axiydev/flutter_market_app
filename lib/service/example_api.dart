import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_market_app/model/other_model.dart';
import 'package:retrofit/retrofit.dart';
part 'example_api.g.dart';

const popularHeaders = Headers({'headers': "header", 'header2': 'header2'});

@RestApi(baseUrl: 'https://hello.com/')
abstract class ExampleApi {
  factory ExampleApi(Dio dio) = _ExampleApi;
  @popularHeaders
  @GET('/example_api')
  Future<List<MarvelComic>> getExample();

  @Headers({'headers': "header", 'header2': 'header2'})
  @POST('/postApi')
  Future<MarvelComic> getApi();
}
