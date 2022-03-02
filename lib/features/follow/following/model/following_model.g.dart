// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowingModel _$FollowingModelFromJson(Map<String, dynamic> json) =>
    FollowingModel(
      login: json['login'] as String?,
      avatar_url: json['avatar_url'] as String?,
      html_url: json['html_url'] as String?,
    );

Map<String, dynamic> _$FollowingModelToJson(FollowingModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatar_url,
      'html_url': instance.html_url,
    };
