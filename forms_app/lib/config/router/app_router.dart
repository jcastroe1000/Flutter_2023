import 'package:forms_app/presentation/screens/bloc_counter_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:forms_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/cubits', builder: (context, state) => CubitCounterScreen()),
    GoRoute(
      path: '/counter-bloc',
      builder: (context, state) => BlocCounterScreens(),
    ),
    GoRoute(path: '/new-user', builder: (context, state) => RegisterScreen()),
  ],
);
