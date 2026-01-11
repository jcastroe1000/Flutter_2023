import 'package:teslo_app/config/constants/enviroment.dart';
import 'package:teslo_app/features/auth/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:teslo_app/features/auth/infra/infra.dart';

class AuthDatasourceImpl extends AuthDatasource {
  final dio = Dio(BaseOptions(baseUrl: Enviroment.apiURL));

  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final response = await dio.post(
        '/auth/login',
        data: {'email': email, 'password': password},
      );

      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } catch (e) {
      throw WrongCredentials();
    }
  }

  @override
  Future<User> register(String email, String password, String fullName) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
