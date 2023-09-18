import 'package:alif/home/reg_page.dart';
import 'package:flutter/material.dart';

import '../../responsive/responsive_layout.dart';

class CourseCard extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final String level;
  final String time;
  final String price;
  final bool isAvaiable;

  const CourseCard({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.level,
    required this.time,
    required this.price,
    required this.isAvaiable,
  });

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  var key = GlobalKey();
  Size? redboxSize;

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        redboxSize = getRedBoxSize(key.currentContext!);
      });
    });
    super.initState();
  }

  Size getRedBoxSize(BuildContext context) {
    final box = context.findRenderObject() as RenderBox;
    return box.size;
  }

  Widget buildInformation() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nivå: ${widget.level}",
                  style: Theme.of(context).textTheme.titleMedium),
              Text(widget.price,
                  style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          const SizedBox(height: 10),
          Text(widget.name, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          Text(widget.description,
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          Text("Tid: ${widget.time}",
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: widget.isAvaiable
                  ? () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => RegPage(
                              courseImage: widget.image,
                              courseName: widget.name,
                              description: widget.description,
                              price: widget.price,
                              level: widget.level))));
                    }
                  : null,
              child: const Text("Registrer deg"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Card(
        key: key,
        clipBehavior: Clip.hardEdge,
        child: !ResponsiveLayout.isMobileLayout(context)
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    widget.image,
                    height: redboxSize?.height,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Container(
                        constraints:
                            const BoxConstraints(minHeight: 150, maxWidth: 800),
                        child: buildInformation()),
                  )
                ],
              )
            : Column(
                children: [
                  Image.asset(
                    widget.image,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  buildInformation()
                ],
              ),
      ),
    );
  }
}
