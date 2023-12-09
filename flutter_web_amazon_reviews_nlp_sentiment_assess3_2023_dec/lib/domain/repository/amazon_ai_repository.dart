import 'package:dio/dio.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/data/network/rest_client.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/models/amazon_review_text.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/models/sentiment_response.dart';
import 'package:get_it/get_it.dart';

///
/// API Repository used widely in the accept [shares common API endpoint for interview purpose]
/// [getAmazonReviewAISentiment]
///
class AmazonAIRepository {
  final RestClient restClient = GetIt.instance.get<RestClient>();

  Future<SentimentResponse> getAmazonReviewAISentiment({required AmazonReviewText amazonReview}) async {
    try {
      final response = await restClient.getAmazonReviewAISentiment(review: amazonReview);
      return response;
    } on DioException catch (dioError) {
      throw Exception('Failed to get AI sentiment for this review: ${dioError.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
