import 'package:clubmark3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MyBookings extends StatelessWidget {
  static const String routeName = '/mybookings';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => MyBookings());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomAppBar(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF1F1F1F),
      body: Column(
        children: [
          screenTitle(
            title: 'My Bookings',
          )
        ],
      ),
    );
  }
}
