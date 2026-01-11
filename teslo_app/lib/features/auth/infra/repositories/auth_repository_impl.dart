import 'package:teslo_app/features/auth/domain/domain.dart';
import 'package:teslo_app/features/auth/infra/datasources/auth_datasource_impl.dart';

class AuthRepositoryImpl extends AuthReposiroy {
  final AuthDatasource dataSource;

  AuthRepositoryImpl(AuthDatasource? dataSource)
    : dataSource = dataSource ?? AuthDatasourceImpl();

  @override
  Future<User> checkAuthStatus(String token) {
    return dataSource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<User> register(String email, String password, String fullName) {
    return dataSource.register(email, password, fullName);
  }
}
