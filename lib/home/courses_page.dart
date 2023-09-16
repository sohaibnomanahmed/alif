import 'package:flutter/material.dart';

import 'widgets/course_card.dart';
import 'widgets/footer.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  scale: 7,
                  image: AssetImage("assets/images/back.png"),
                  repeat: ImageRepeat.repeat,
                ),
              ),
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              child: Text("KURS",
                  style: Theme.of(context).textTheme.displayMedium)),
          const SizedBox(height: 30),
          const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Introduction to Arabic Grammar',
            description:
                'The exciting journey begins here. Learn the three essential parts of Arabic speech, develop the ability to identify root letters, and begin to form your own Arabic sentences.',
            price: '300 kr',
            time: "Torsdag kl 13:00-15:00 og Fredag kl 12:00-13:00",
            level: "1",
          ),
          const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Intermediate Arabic Grammar',
            description:
                'The exciting journey begins here. Learn the three essential parts of Arabic speech, develop the ability to identify root letters, and begin to form your own Arabic sentences.',
            price: '300 kr',
            time: "Mandag kl 13:00-15:00",
            level: "2",
          ),
          const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Advanced Arabic Grammar I',
            description:
                'The exciting journey begins here. Learn the three essential parts of Arabic speech, develop the ability to identify root letters, and begin to form your own Arabic sentences.',
            price: '500 kr',
            time: "Torsdag kl 13:00-15:00 og Fredag kl 12:00-13:00",
            level: "3",
          ),
          const SizedBox(height: 30),
          const Footer()
        ],
      ),
    );
  }
}
