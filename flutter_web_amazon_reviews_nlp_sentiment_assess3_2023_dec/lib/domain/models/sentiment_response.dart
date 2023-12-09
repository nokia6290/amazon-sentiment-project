import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sentiment_response.g.dart';

@JsonSerializable()
class SentimentResponse extends Equatable {
  const SentimentResponse(
      this.value,
      );

  factory SentimentResponse.fromJson(Map<String, dynamic> json) => _$SentimentResponseFromJson(json);
  @JsonKey(name: 'sentiment')
  final String? value;

  Map<String, dynamic> toJson() => _$SentimentResponseToJson(this);

  @override
  List<Object?> get props => <Object?>[value];
}
