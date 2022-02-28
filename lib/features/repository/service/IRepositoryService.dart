// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:github_app/features/repository/model/repository_model.dart';


abstract class IRepositoryService {
  final Dio dio;

  IRepositoryService(this.dio);

  Future<List<RepositoryModel>> fetchAllRepositoryItems(String username);
}
