import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../responsive/responsive_layout.dart';
import '../routing/routes.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final tabPage = TabPage.of(context);
    return AppBar(
      title: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveLayout.isDesktopLayout(context)
                ? screenWidth * 0.1
                : 0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //Image.asset('assets/images/logo.png', width: 56),
          Text(
            "ALIF INSTITUTT",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          ResponsiveLayout.isMobileLayout(context)
              ? const SizedBox()
              : SizedBox(
                  width: 500,
                  child: TabBar(
                    dividerColor: Colors.transparent,
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
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
