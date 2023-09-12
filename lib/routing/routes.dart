import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../home/about_page.dart';
import '../home/courses_page.dart';
import '../home/home_page.dart';
import '../home/my_home_page.dart';

const homePage = "Home";
const coursesPage = "Courses";
const testmonialPage = "Testmonial";
const aboutPage = "About";
const contactPage = "Contact";

List<String> navMenu = [
  homePage,
  coursesPage,
  testmonialPage,
  aboutPage,
  contactPage
];

class Routes {
  final routeMap = RouteMap(
    onUnknownRoute: (_) => const Redirect('/'),
    routes: {
      '/': (route) => TabPage(child: MyHomePage(), paths: const [
            '/home',
            '/courses',
            '/testmonial',
            '/about',
            '/contact'
          ]),
      '/home': (route) => const MaterialPage(child: HomePage()),
      '/courses': (route) => const MaterialPage(child: CoursesPage()),
      '/testmonial': (route) => const MaterialPage(child: AboutPage()),
      '/about': (route) => const MaterialPage(child: AboutPage()),
      '/contact': (route) => const MaterialPage(child: AboutPage()),
    },
  );

  final RoutemasterParser routemasterParser = const RoutemasterParser();
  late RoutemasterDelegate routemasterDelegate;

  Routes() {
    routemasterDelegate = RoutemasterDelegate(routesBuilder: (context) {
      return routeMap;
    });
  }
}
