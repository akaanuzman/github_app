// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'repository_model.g.dart';

@JsonSerializable()
class RepositoryModel {
  String? language;
  String? html_url;
  String? description;
  String? name;
  String? updated_at;

  RepositoryModel({
    this.language,
    this.html_url,
    this.description,
    this.name,
    this.updated_at,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryModelFromJson(json);

  Map<String, dynamic> get toJson => _$RepositoryModelToJson(this);
}
