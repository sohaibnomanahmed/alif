import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../responsive/responsive_layout.dart';
import '../routing/routes.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabPage = TabPage.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset('assets/images/logo.png', width: 100),
        ResponsiveLayout.isMobileLayout(context)
            ? const SizedBox()
            : SizedBox(
                width: 600,
                child: TabBar(
                  controller: tabPage.controller,
                  //flexibleSpace: Image.asset('assets/1.jpg', fit: BoxFit.cover,),
                  tabs: ResponsiveLayout.isMobileLayout(context)
                      ? []
                      : [
                          ...navMenu.map((e) => Tab(
                                child: Text(e),
                              ))
                        ],
                ),
              ),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
