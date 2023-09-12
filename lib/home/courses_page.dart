import 'package:flutter/material.dart';

import 'widgets/course_card.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: 20),
      children: [
        const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Arabisk Level 1',
            description: '....'),
        const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Arabisk Level 2',
            description: '....'),
        const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Arabisk Level 3',
            description: '....'),
      ],
    );
  }
}
