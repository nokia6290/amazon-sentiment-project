import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/core/di/dependency_injector.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/models/amazon_review_text.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/models/sentiment_response.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/repository/amazon_ai_repository.dart';

///
/// Sentiment analysis for amazon review [getAmazonReviewSentimentAnalysis]
///
class AmazonAiSentimentNotifier extends StateNotifier<AsyncValue<SentimentResponse?>> {
  AmazonAiSentimentNotifier() : super(const AsyncValue.data(null));
  final _amazonAiRepository = sl.get<AmazonAIRepository>();

  // POST Amazon review sentiment analysis
  Future<SentimentResponse?> getAmazonReviewSentimentAnalysis({required String amazonReviewText}) async {
    try {
      state = const AsyncValue.loading();
      final response = await _amazonAiRepository.getAmazonReviewAISentiment(
          amazonReview: AmazonReviewText(amazonReviewText: amazonReviewText));
      state = AsyncValue.data(response);
      return response;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
    return null;
  }
}

final amazonAiReviewNotifierProvider = StateNotifierProvider<AmazonAiSentimentNotifier, AsyncValue<SentimentResponse?>>(
  (ref) => AmazonAiSentimentNotifier(),
);
