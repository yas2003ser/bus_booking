import 'package:bus_booking/screens/auth/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String help = '/help';
  static const String home = '/home';
  static const String forgetPassword = '/forgetPassword';
  static const String information = '/information';
  
}

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
      //   return MaterialPageRoute(
      //     builder: (_) => const SplashScreen(),
      //   );
       case Routes.welcome:
         return MaterialPageRoute(
           builder: (_) => const WelcomeScreen(),
        );
       case Routes.login:
      //   return MaterialPageRoute(
      //     builder: (_) => ,
      //   );
       case Routes.register:
      //   return MaterialPageRoute(
      //     builder: (_) => ,
      //   );
       case Routes.profile:
      //   return MaterialPageRoute(
      //     builder: (_) => ,
      //   );
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