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
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: !ResponsiveLayout.isMobileLayout(context)
          ? Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Card(
                  margin: const EdgeInsets.all(0),
                  child: Container(
                    constraints: const BoxConstraints(minHeight: 150),
                    padding: const EdgeInsets.only(
                        left: 220, top: 20, bottom: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(name,
                            style: Theme.of(context).textTheme.titleLarge),
                        const SizedBox(height: 10),
                        Text(description,
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  image,
                  width: 200,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(name, style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 10),
                      Text(description,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
