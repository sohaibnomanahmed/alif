import 'package:alif/home/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container();
    // ListView(
    //   shrinkWrap: true,
    //   children: [
    //     const ContactCard(
    //         image: 'assets/images/profile.jpg',
    //         name: 'Musab Sufian',
    //         description: '....'),
    //     Card(
    //       clipBehavior: Clip.hardEdge,
    //       child: Row(
    //         children: [
    //           Image.asset(
    //             'assets/images/profile.jpg',
    //             width: 200,
    //             height: 200,
    //             fit: BoxFit.cover,
    //           ),
    //           const SizedBox(width: 10),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text("Name", style: Theme.of(context).textTheme.titleLarge),
    //               Text("Education",
    //                   style: Theme.of(context).textTheme.titleMedium),
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //     Card(
    //       clipBehavior: Clip.hardEdge,
    //       child: Row(
    //         children: [
    //           Image.asset(
    //             'assets/images/profile.jpg',
    //             width: 200,
    //             height: 200,
    //             fit: BoxFit.cover,
    //           ),
    //           const SizedBox(width: 10),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text("Name", style: Theme.of(context).textTheme.titleLarge),
    //               Text("Education",
    //                   style: Theme.of(context).textTheme.titleMedium),
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //     Card(
    //       clipBehavior: Clip.hardEdge,
    //       child: Row(
    //         children: [
    //           Image.asset(
    //             'assets/images/profile.jpg',
    //             width: 200,
    //             height: 200,
    //             fit: BoxFit.cover,
    //           ),
    //           const SizedBox(width: 10),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text("Name", style: Theme.of(context).textTheme.titleLarge),
    //               Text("Education",
    //                   style: Theme.of(context).textTheme.titleMedium),
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //     Card(
    //       clipBehavior: Clip.hardEdge,
    //       child: Row(
    //         children: [
    //           Image.asset(
    //             'assets/images/profile.jpg',
    //             width: 200,
    //             height: 200,
    //             fit: BoxFit.cover,
    //           ),
    //           const SizedBox(width: 10),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text("Name", style: Theme.of(context).textTheme.titleLarge),
    //               Text("Education",
    //                   style: Theme.of(context).textTheme.titleMedium),
    //             ],
    //           )
    //         ],
    //       ),
    //     )
    //   ],
    // );
  }
}
