import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/dashboard/dashboard_screen.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/info/info_screen.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/search/search_screen.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/splash/splash_screen.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/routing/go_router_observer_logger.dart';
import 'package:go_router/go_router.dart';

/// Unauthenticated route enums
enum AppRoute {
  splash,
  dashboard,
  search,
  info,
}

final goRouter = GoRouter(
  initialLocation: '/${AppRoute.splash.name}',
  observers: [GoRouterObserverLogger()],
  debugLogDiagnostics: true,
  routes: [
    /// Initial route
    GoRoute(
      path: '/${AppRoute.splash.name}',
      name: AppRoute.splash.name,
      builder: (context, state) => const SplashScreen(),
    ),

    /// Unauthenticated routes
    GoRoute(
      path: '/${AppRoute.dashboard.name}',
      name: AppRoute.dashboard.name,
      builder: (context, state) => const DashboardScreen(),
    ),

    GoRoute(
      path: '/${AppRoute.search.name}',
      name: AppRoute.search.name,
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/${AppRoute.info.name}',
      name: AppRoute.info.name,
      builder: (context, state) => const InfoScreen(),
    ),
  ],
);
