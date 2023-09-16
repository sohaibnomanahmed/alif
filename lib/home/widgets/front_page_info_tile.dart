import 'package:flutter/material.dart';

import '../../responsive/responsive_layout.dart';

class FrontpageInfoTile extends StatelessWidget {
  final String mainImage;
  String? subImage;
  final String title;
  final String text;
  final bool flip;
  FrontpageInfoTile({
    super.key,
    required this.mainImage,
    this.subImage,
    required this.title,
    required this.text,
    this.flip = false,
  });

  @override
  Widget build(BuildContext context) {
    return !ResponsiveLayout.isMobileLayout(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!flip)
                Flexible(
                    child: Image.asset(
                  mainImage,
                  width: 450,
                )),
              if (!flip) const SizedBox(width: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  children: [
                    if (subImage != null)
                      Image.asset(
                        subImage!,
                        width: 100,
                      ),
                    const SizedBox(height: 10),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              if (flip) const SizedBox(width: 50),
              if (flip)
                Flexible(
                  child: CircleAvatar(
                    radius: 160,
                    backgroundImage: AssetImage(mainImage),
                  ),
                ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                if (!flip)
                  Image.asset(
                    mainImage,
                    height: 400,
                  ),
                if (flip)
                  CircleAvatar(
                    radius: 160,
                    backgroundImage: AssetImage(mainImage),
                  ),
                const SizedBox(width: 20),
                if (flip) const SizedBox(height: 30),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
  }
}
