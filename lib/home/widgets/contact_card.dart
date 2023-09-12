import 'package:alif/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  const ContactCard(
      {super.key,
      required this.image,
      required this.name,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: !ResponsiveLayout.isMobileLayout(context)
          ? Row(
              children: [
                Image.asset(
                  image,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    Text(description,
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                )
              ],
            )
          : Column(
              children: [
                Image.asset(
                  image,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    Text(description,
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                )
              ],
            ),
    );
  }
}
