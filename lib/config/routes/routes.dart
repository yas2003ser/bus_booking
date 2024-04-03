import 'package:bus_booking/screens/auth/informations_screen.dart';
import 'package:bus_booking/screens/auth/login/login.dart';
import 'package:bus_booking/screens/auth/signup/signup.dart';
import 'package:bus_booking/screens/auth/welcome_screen.dart';
import 'package:bus_booking/screens/home/home_screen.dart';
import 'package:bus_booking/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String help = '/help';
  static const String home = '/home';
  static const String forgetPassword = '/forgetPassword';
  static const String informationScreen = '/InformationScreen';
}

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const Signup(),
        );
      case Routes.informationScreen:
        return MaterialPageRoute(
          builder: (_) => const InformationScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
