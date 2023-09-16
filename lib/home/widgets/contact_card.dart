import 'package:alif/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String image;
  final String name;
  final String role;
  final String description;

  const ContactCard({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.role,
  });

  Widget buildInformation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        Text(role,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(description, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: !ResponsiveLayout.isMobileLayout(context)
          ? Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Card(
                  margin: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      constraints:
                          const BoxConstraints(minHeight: 150, maxWidth: 1000),
                      padding: const EdgeInsets.only(
                          left: 260, top: 20, bottom: 20, right: 20),
                      child: buildInformation(context)),
                ),
                Image.asset(
                  image,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ],
            )
          : Column(
              children: [
                Image.asset(
                  image,
                  width: 300,
                ),
                const SizedBox(width: 10),
                Card(
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: buildInformation(context)),
                )
              ],
            ),
    );
  }
}
