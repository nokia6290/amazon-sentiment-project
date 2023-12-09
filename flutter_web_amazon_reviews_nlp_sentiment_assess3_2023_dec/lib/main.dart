import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/core/di/dependency_injector.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/localization/l10n.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/routing/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init dependency injector
  await initDependencyInjector();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: [...S.delegate.supportedLocales],
    );
  }
}
