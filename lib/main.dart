//import 'package:alif/routing/go_routes.dart';
import 'package:alif/gsheets_api.dart';
import 'package:alif/routing/routes.dart';
import 'package:flutter/material.dart';

import 'theme/theming.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GSheetsAPi.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = Routes();

  final theming = Theming();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Alif Institutt',
      theme: theming.lightTheme,
      routerDelegate: routes.routemasterDelegate, // Routemaster
      routeInformationParser: routes.routemasterParser, // Routemaster
    );
  }
}
