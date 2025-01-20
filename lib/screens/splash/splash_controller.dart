import '../../component/config/app_route.dart';
import '../../main.dart';

class SplashController {
  void refreshUserLoggedIn() async {
    Future.delayed(const Duration(seconds: 5), () {
      if (AppNav.context.mounted) {
        AppNav.context.goNamed(AppRoute.intro);
      }
    });
  }
}
