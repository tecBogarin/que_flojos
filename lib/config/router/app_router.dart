import 'package:go_router/go_router.dart';
import 'package:notifications_flutter/presentation/screens/home_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomeScreen())
]);
