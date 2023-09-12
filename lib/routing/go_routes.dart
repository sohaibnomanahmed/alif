import 'package:alif/home/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  late GoRouter router;

  Routes() {
    // GoRouter.of(context).go('/') or context.go('/')
    router = GoRouter(
      
      routes: [
      ShellRoute(builder: (context, state, child) => MyHomePage(), routes: [
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
