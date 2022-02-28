// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) =>
    RepositoryModel(
      language: json['language'] as String?,
      html_url: json['html_url'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$RepositoryModelToJson(RepositoryModel instance) =>
    <String, dynamic>{
      'language': instance.language,
      'html_url': instance.html_url,
      'description': instance.description,
      'name': instance.name,
      'updated_at': instance.updated_at,
    };
