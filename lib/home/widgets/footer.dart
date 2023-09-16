import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final year = DateTime.now().year;
    return Container(
      alignment: Alignment.topLeft,
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: 20),
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/logo.png', width: 80),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.mail, color: Colors.grey),
              SizedBox(width: 10),
              Text("info@alifinstitutt.no",
                  style: TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.copyright_rounded, color: Colors.grey),
              const SizedBox(width: 10),
              Text("Copyrigth $year Alif Institutt",
                  style: const TextStyle(color: Colors.grey))
            ],
          ), //TODO year dynamic
        ],
      ),
    );
  }
}
