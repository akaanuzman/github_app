
// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'following_model.g.dart';

@JsonSerializable()
class FollowingModel {
  final String? login;
  final String? avatar_url;
  final String? html_url;

  FollowingModel({
    this.login,
    this.avatar_url,
    this.html_url,
  });

  factory FollowingModel.fromJson(Map<String,dynamic> json) => _$FollowingModelFromJson(json);

  Map<String,dynamic> get toJson => _$FollowingModelToJson(this);

}
