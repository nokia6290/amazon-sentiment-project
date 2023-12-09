import 'package:flutter/material.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/routing/go_router.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/theme/resources/image_path.dart';
import 'package:lottie/lottie.dart';

///
/// Initial Splash Screen
///
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  Future<void> _navigateToHomeScreen() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    goRouter.goNamed(AppRoute.dashboard.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFD500),
              Color(0xFFFF7F00),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Lottie.asset(ImagePath.appSplashLogo),
          ),
        ),
      ),
    );
  }
}
