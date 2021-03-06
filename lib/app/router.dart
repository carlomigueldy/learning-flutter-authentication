import 'package:flutter/material.dart';

// Screens
import '../screens/place_screen.dart';
import '../screens/home_screen.dart';
import '../screens/users/user_detail_screen.dart';
import '../screens/users/user_list_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/login_screen.dart';
import '../screens/settings_screen.dart';

class Router {
  /// All the routes are defined in here
  /// in a switch statement since this will
  /// be able to handle dynamic page requests.
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SettingsScreen.routeName:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case UserListScreen.routeName:
        return MaterialPageRoute(builder: (_) => UserListScreen());
      case UserDetailScreen.routeName:
        return MaterialPageRoute(builder: (_) => UserDetailScreen(arguments));
      case PlaceScreen.routeName:
        return MaterialPageRoute(builder: (_) => PlaceScreen(arguments));
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}
