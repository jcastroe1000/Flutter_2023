import 'package:flutter_riverpod/legacy.dart';
import 'package:teslo_app/features/auth/domain/domain.dart';
import 'package:teslo_app/features/auth/infra/infra.dart';

final authProvider = StateNotifierProvider.autoDispose<AuthNotifier, AuthState>(
  (ref) {
    final authRepository = AuthRepositoryImpl();
    return AuthNotifier(authReposiroy: authRepository);
  },
);

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthReposiroy authReposiroy;

  AuthNotifier({required this.authReposiroy}) : super(AuthState());

  void loginUser(String email, String password) async {}

  void registerUser(String email, String password) async {}

  void checkingStatus() async {}
}

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthState {
  final AuthStatus authStatus;
  final User? user;
  final String errorMessage;

  AuthState({
    this.authStatus = AuthStatus.checking,
    this.user,
    this.errorMessage = '',
  });

  AuthState copyWith({
    AuthStatus? authStatus,
    User? user,
    String? errorMessage,
  }) => AuthState(
    authStatus: authStatus ?? this.authStatus,
    user: user ?? this.user,
    errorMessage: errorMessage ?? this.errorMessage,
  );
}
