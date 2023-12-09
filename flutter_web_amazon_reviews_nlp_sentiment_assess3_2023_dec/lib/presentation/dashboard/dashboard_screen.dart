import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/dashboard/riverpod/dashboard_riverpod.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/info/info_screen.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/search/search_screen.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  static final List<Widget> screensList = [
    const SearchScreen(),
    const InfoScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screensList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Analyze',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: 'About',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) => ref.read(selectedIndexProvider.notifier).state = index,
      ),
    );
  }
}
