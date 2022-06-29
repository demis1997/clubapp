import 'package:clubmark3/providers/mylocationprovider.dart';
import 'package:flutter/material.dart';

import 'config/app_router.dart';
import 'config/theme.dart';
import 'screens/introScreen.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Club App',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
    );
  }
}
