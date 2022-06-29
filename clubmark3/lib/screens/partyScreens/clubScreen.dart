import 'package:clubmark3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ClubScreen extends StatelessWidget {
  static const String routeName = '/viewclub';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => ClubScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'club name here',
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}
