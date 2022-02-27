// ignore_for_file: file_names

import 'package:dio/dio.dart';

import '../model/user_model.dart';

abstract class IUserService {
  final Dio dio;

  IUserService(this.dio);

  Future<UserModel> fetchUserItems(String username);
}
