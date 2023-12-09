import 'package:dio/dio.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/models/amazon_review_text.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/models/sentiment_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

///
/// API Rest client for chuck norris jokes
/// after modifying run on terminal flutter pub run build_runner build --delete-conflicting-outputs
///
@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/predict')
  Future<SentimentResponse> getAmazonReviewAISentiment({@Body() required AmazonReviewText review});
}
