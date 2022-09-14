// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      id: json['id'] as String?,
      title: json['title'] as String?,
      isVerified: json['isVerified'] as bool?,
      isActive: json['isActive'] as bool?,
      subTitle: json['subTitle'] as String?,
      imgUrls:
          (json['imgUrls'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isVerified': instance.isVerified,
      'isActive': instance.isActive,
      'subTitle': instance.subTitle,
      'imgUrls': instance.imgUrls,
    };
