import 'package:clubmark3/models/models.dart';
import 'package:clubmark3/screens/introScreen.dart';

import 'package:clubmark3/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case '/homescreen':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case IntroScreen.routeName:
        return DiscoverScreen.route();
      case MyBookings.routeName:
        return MyBookings.route();
      case MyAccount.routeName:
        return MyAccount.route();
      case EventScreen.routeName:
        return EventScreen.route(event: settings.arguments as Event);
      case ClubScreen.routeName:
        return ClubScreen.route();
      case DiscoverScreen.routeName:
        return DiscoverScreen.route();
      case BookTicketScreen.routeName:
        return BookTicketScreen.route(event: settings.arguments as Event);
      case ConfirmedScreen.routeName:
        return ConfirmedScreen.route(event: settings.arguments as Event);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1F1F1F),
        ),
        body: Scaffold(
          backgroundColor: Color(0xFF1F1F1F),
          body: Padding(
            padding: const EdgeInsets.only(
                top: 300.0, bottom: 300.0, left: 150, right: 150),
            child: Text(
              'Error',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
