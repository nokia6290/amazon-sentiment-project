import 'package:dio/dio.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/core/constants/api_constants.dart';

///
/// Wrapper for Dio - used for customizing HTTP services
///
class DioClient {
  DioClient._();

  static Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseApiUrlAwsAiModel,
    ),
  );
}
