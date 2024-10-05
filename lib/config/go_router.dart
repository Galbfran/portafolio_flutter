import 'package:go_router/go_router.dart';
import 'package:portafolio/screens/init_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const InitPage(),
    ),
  ],
);
