import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/data/network/dio_client.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/data/network/rest_client.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/domain/repository/amazon_ai_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt sl = GetIt.instance;

/// Initial dependency injector
Future<void> initDependencyInjector() async {
  await _initNetwork();
  await _initRepositoryImplementations();
  await _initSharedPreferences();
}

/// Network
Future<void> _initNetwork() async {
  // Dio client
  final dio = DioClient.dio;
  sl.registerLazySingleton(() => dio);

  // Rest client
  final restClient = RestClient(dio);
  sl.registerLazySingleton(() => restClient);
}

/// Repositories
Future<void> _initRepositoryImplementations() async {
  sl.registerLazySingleton(AmazonAIRepository.new);
}

/// Local key-value cache
Future<void> _initSharedPreferences() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
