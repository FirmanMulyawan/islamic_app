import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
export 'package:go_router/go_router.dart';

import '../../main.dart';
import '../../screens/change_password/change_password_screen.dart';
import '../../screens/intro/intro_screen.dart';
import '../../screens/sign_in/sign_in_screen.dart';
import '../../screens/splash/splash_screen.dart';

class AppRoute {
  // path
  static const String pathDefaultRoute = '/';
  static const String pathIntro = '/pathIntro';
  static const String pathSignIn = '/pathSignIn';
  static const String pathChangePassword = 'pathChangePassword';

  // name
  static const String spalash = 'spalash';
  static const String intro = 'intro';
  static const String signIn = 'signIn';
  static const String changePassowrd = 'changePassowrd';

  // The route configuration.
  static GoRouter router = GoRouter(
    // errorBuilder: (context, state) {
    //   return;
    // },
    initialLocation: pathDefaultRoute,
    // debugLogDiagnostics: true,
    navigatorKey: AppNav.navigatorKey,
    routerNeglect: true,
    routes: <RouteBase>[
      GoRoute(
        path: pathDefaultRoute,
        name: spalash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: pathIntro,
        name: intro,
        builder: (BuildContext context, GoRouterState state) {
          return const IntroScreen();
        },
      ),
      GoRoute(
        path: pathSignIn,
        name: signIn,
        builder: (BuildContext context, GoRouterState state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
        path: pathChangePassword,
        name: changePassowrd,
        builder: (BuildContext context, GoRouterState state) {
          return const ChangePasswordScreen();
        },
      ),
    ],
  );
}
