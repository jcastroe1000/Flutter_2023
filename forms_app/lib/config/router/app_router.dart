import 'package:go_router/go_router.dart';
import 'package:forms_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(
      path: '/cubits',
      builder: (context, state) => CubitCounterScreens(),
    ),
  ],
);
