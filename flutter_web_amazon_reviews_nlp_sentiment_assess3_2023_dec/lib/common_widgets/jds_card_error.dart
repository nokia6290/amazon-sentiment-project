import 'package:flutter/material.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/common_widgets/jds_card_with_animation.dart';
import 'package:flutter_web_amazon_reviews_nlp_sentiment_assess3_2023_dec/localization/l10n.dart';

///
/// JDS - Joiner Design System widgets library [JDSCardError]
///
class JDSCardError extends StatelessWidget {
  const JDSCardError({
    required this.error,
    super.key,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return JDSCardWithAnimation(
      color: Colors.redAccent.shade200,
      text: '${S.of(context).generic_error}: $error',
    );
  }
}
