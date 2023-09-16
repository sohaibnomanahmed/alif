import 'package:flutter/material.dart';

import 'widgets/course_card.dart';
import 'widgets/footer.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Introduction to Arabic Grammar',
            description:
                'The exciting journey begins here. Learn the three essential parts of Arabic speech, develop the ability to identify root letters, and begin to form your own Arabic sentences.',
            price: '300 kr',
            time: "Torsdag kl 13:00-15:00 og Fredag kl 12:00-13:00",
            level: "1",
          ),
          CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Intermediate Arabic Grammar',
            description:
                'The exciting journey begins here. Learn the three essential parts of Arabic speech, develop the ability to identify root letters, and begin to form your own Arabic sentences.',
            price: '300 kr',
            time: "Mandag kl 13:00-15:00",
            level: "2",
          ),
          CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Advanced Arabic Grammar I',
            description:
                'The exciting journey begins here. Learn the three essential parts of Arabic speech, develop the ability to identify root letters, and begin to form your own Arabic sentences.',
            price: '500 kr',
            time: "Torsdag kl 13:00-15:00 og Fredag kl 12:00-13:00",
            level: "3",
          ),
          SizedBox(height: 30),
          Footer()
        ],
      ),
    );
  }
}
