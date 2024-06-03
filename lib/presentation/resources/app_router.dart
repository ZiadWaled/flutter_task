import 'package:flutter_task/presentation/auth/activation%20_code/activation_code_page.dart';
import 'package:flutter_task/presentation/auth/login/login_view.dart';
import 'package:flutter_task/presentation/auth/rigester/register_view.dart';
import 'package:flutter_task/presentation/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kVerifyCode = '/verifyCode';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kMainView = '/mainView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) {
          return const RegisterView();
        },
      ),
      GoRoute(
        path: kVerifyCode,
        builder: (context, state) {
          return const ActivationCodePage();
        },
      ),
      // GoRoute(
      //   path: kForgotPasswordView,
      //   builder: (context, state) => const ForgotPasswordView(),
      // ),
      // GoRoute(
      //   path: kMainView,
      //   builder: (context, state) =>  MainView(),
      // ),
    ],
  );
}
