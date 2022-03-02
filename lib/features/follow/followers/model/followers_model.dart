// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'followers_model.g.dart';

@JsonSerializable()
class FollowersModel {
  final String? login;
  final String? avatar_url;
  final String? html_url;

  FollowersModel({
    this.login,
    this.avatar_url,
    this.html_url,
  });

  factory FollowersModel.fromJson(Map<String, dynamic> json) =>
      _$FollowersModelFromJson(json);

  Map<String, dynamic> get toJson => _$FollowersModelToJson(this);
}
