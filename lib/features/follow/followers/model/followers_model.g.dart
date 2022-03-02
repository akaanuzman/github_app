// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowersModel _$FollowersModelFromJson(Map<String, dynamic> json) =>
    FollowersModel(
      login: json['login'] as String?,
      avatar_url: json['avatar_url'] as String?,
      html_url: json['html_url'] as String?,
    );

Map<String, dynamic> _$FollowersModelToJson(FollowersModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatar_url,
      'html_url': instance.html_url,
    };
