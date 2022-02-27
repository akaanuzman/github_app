// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      login: json['login'] as String?,
      avatar_url: json['avatar_url'] as String?,
      url: json['url'] as String?,
      html_url: json['html_url'] as String?,
      name: json['name'] as String?,
      company: json['company'] as String?,
      blog: json['blog'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      twitter_username: json['twitter_username'] as String?,
      public_repos: json['public_repos'] as int?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatar_url,
      'url': instance.url,
      'html_url': instance.html_url,
      'name': instance.name,
      'company': instance.company,
      'blog': instance.blog,
      'location': instance.location,
      'email': instance.email,
      'bio': instance.bio,
      'twitter_username': instance.twitter_username,
      'public_repos': instance.public_repos,
      'followers': instance.followers,
      'following': instance.following,
    };
