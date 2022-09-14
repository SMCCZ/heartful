import 'package:json_annotation/json_annotation.dart';
part 'article.g.dart';

@JsonSerializable(explicitToJson: true)
class Article {
  final String? id;
  final String? title;
  final bool? isVerified;
  final bool? isActive;
  final String? subTitle;
  final List<String>? imgUrls;

  Article({
    this.id,
    this.title,
    this.isVerified,
    this.isActive,
    this.subTitle,
    this.imgUrls,
  });
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
