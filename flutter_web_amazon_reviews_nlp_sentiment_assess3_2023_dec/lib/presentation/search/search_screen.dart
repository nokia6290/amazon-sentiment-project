import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/common_widgets/jds_card_error.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/common_widgets/jds_circular_progress_indicator.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/common_widgets/jds_text_form_field.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/localization/l10n.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/presentation/search/riverpod/amazon_ai_sentiment_notifier.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  String _lastSearch = '';
  String _errorText = '';

  void _analyzeAmazonReview() {
    // Dismiss the keyboard
    FocusScope.of(context).unfocus();

    final query = _controller.text;
    // Guard - minimum 3 characters
    if (query.length < 3) {
      setState(() => _errorText = S.current.search_minimum_words);
      return;
    }

    // Guard - compares to previous search query
    if (query != _lastSearch) {
      setState(() {
        _lastSearch = query;
        _errorText = '';
      });
      ref.read(amazonAiReviewNotifierProvider.notifier).getAmazonReviewSentimentAnalysis(amazonReviewText: query);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final jokeAsyncValue = ref.watch(amazonAiReviewNotifierProvider);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).search_search_title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              JDSTextFormField(
                textEditingController: _controller,
                labelText: S.of(context).search_enter_word,
                onFieldSubmitted: (_) => _analyzeAmazonReview(),
                errorText: _errorText.isNotEmpty ? _errorText : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _analyzeAmazonReview,
                child: Text(S.of(context).generic_search),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: jokeAsyncValue.when(
                  loading: JDSCircularProgressIndicator.new,
                  error: (error, _) => JDSCardError(error: error.toString()),
                  data: (searchResult) {
                    // Guard
                    if (searchResult != null) {
                      return Text(searchResult.value ?? '');
                    } else {
                      return Center(child: Text(S.of(context).search_no_results));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
