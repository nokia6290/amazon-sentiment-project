import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'amazon_review_text.g.dart';

@JsonSerializable()
class AmazonReviewText extends Equatable {
  const AmazonReviewText({
   required this.amazonReviewText,
  });

  factory AmazonReviewText.fromJson(Map<String, dynamic> json) => _$AmazonReviewTextFromJson(json);
  @JsonKey(name: 'text')
  final String amazonReviewText;

  Map<String, dynamic> toJson() => _$AmazonReviewTextToJson(this);

  @override
  List<Object?> get props => <Object?>[amazonReviewText];
}
