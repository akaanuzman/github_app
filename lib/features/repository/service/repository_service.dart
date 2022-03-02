import 'dart:io';

import 'package:dio/dio.dart';

import '../model/repository_model.dart';
import 'IRepositoryService.dart';
import 'repository_service_end_points.dart';

class RepositoryService extends IRepositoryService {
  RepositoryService(Dio dio) : super(dio);

  @override
  Future<List<RepositoryModel>> fetchAllRepositoryItems(String username) async {
    final String rawValue = RepositoryServiceEndPoints.REPO.rawValue(username);
    final response = await dio.get(rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => RepositoryModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
