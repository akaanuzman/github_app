// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? login;
  String? avatar_url;
  String? url;
  String? html_url;
  String? name;
  String? company;
  String? blog;
  String? location;
  String? email;
  String? bio;
  String? twitter_username;
  int? public_repos;
  int? followers;
  int? following;

  UserModel({
    this.login,
    this.avatar_url,
    this.url,
    this.html_url,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.bio,
    this.twitter_username,
    this.public_repos,
    this.followers,
    this.following,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> get toJson => _$UserModelToJson(this);
}
