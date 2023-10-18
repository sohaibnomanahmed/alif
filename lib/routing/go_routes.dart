import 'package:alif/home/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routemaster/routemaster.dart';

import '../home/about_page.dart';
import '../home/courses_page.dart';
import '../home/home_page.dart';
import '../home/my_home_page.dart';

const homePage = "Hjem";
const coursesPage = "Kurs";
const testmonialPage = "Testmonial";
const aboutPage = "Om oss";
const contactPage = "Kontakt";

List<String> navMenu = [
  homePage,
  coursesPage,
  testmonialPage,
  aboutPage,
  contactPage
];

class Routes {
  late GoRouter router;

  Routes() {
    // GoRouter.of(context).go('/') or context.go('/')
    router = GoRouter(routes: [
      GoRoute(path: '/', builder: (context, state) => MyHomePage(), routes: [
        GoRoute(path: '/home', builder: (context, state) => const HomePage()),
        GoRoute(
            path: '/courses', builder: (context, state) => const CoursesPage()),
        GoRoute(
            path: '/testmonial',
            builder: (context, state) => const AboutPage()),
        GoRoute(path: '/about', builder: (context, state) => const AboutPage()),
        GoRoute(path: '/contact', builder: (context, state) => ContactPage()),
      ]),
    ]);
  }
}
