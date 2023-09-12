import 'package:alif/home/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: 20),
      children: [
        const ContactCard(
            image: 'assets/images/profile.png',
            name: 'Musab Sufian',
            description: '....'),
        const ContactCard(
            image: 'assets/images/profile.png',
            name: 'Musab Sufian',
            description: '....'),
        const ContactCard(
            image: 'assets/images/profile.png',
            name: 'Musab Sufian',
            description: '....'),
      ],
    );
  }
}
