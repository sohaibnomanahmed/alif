import 'package:alif/home/home_page.dart';
import 'package:flutter/material.dart';

import 'routing/routes.dart';

void main() {  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Routes routes = Routes();
  
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: routes.routemasterDelegate,
      routeInformationParser: routes.routemasterParser,
    );
  }
}

