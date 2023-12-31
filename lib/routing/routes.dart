import 'package:alif/home/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../home/about_page.dart';
import '../home/courses_page.dart';
import '../home/home_page.dart';
import '../home/my_home_page.dart';

const homePage = "Hjem";
const coursesPage = "Kurs";
//const testmonialPage = "Testmonial";
const aboutPage = "Om oss";
const contactPage = "Kontakt";

List<String> navMenu = [
  homePage,
  coursesPage,
  //testmonialPage,
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
            //'/testmonial',
            '/about',
            '/contact'
          ]),
      '/home': (route) => const MaterialPage(child: HomePage()),
      '/courses': (route) => const MaterialPage(child: CoursesPage()),
      //'/testmonial': (route) => const MaterialPage(child: AboutPage()),
      '/about': (route) => const MaterialPage(child: AboutPage()),
      '/contact': (route) => MaterialPage(child: ContactPage()),
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
