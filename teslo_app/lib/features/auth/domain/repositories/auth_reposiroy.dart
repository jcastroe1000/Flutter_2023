import 'package:teslo_app/features/auth/domain/domain.dart';

abstract class AuthReposiroy {
  Future<User> login(String email, String password);
  Future<User> register(String email, String password, String fullName);
  Future<User> checkAuthStatus(String token);
}
