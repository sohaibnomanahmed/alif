import 'package:alif/home/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../responsive/desktop_layout.dart';
import '../responsive/mobile_layout.dart';
import '../responsive/responsive_layout.dart';
import '../routing/routes.dart';
import 'top_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(); 25min in video

  @override
  Widget build(BuildContext context) {
    final tabPage = TabPage.of(context);
    return Scaffold(
      //key: scaffoldKey,
      endDrawer: ResponsiveLayout.isMobileLayout(context)
          ? Drawer(
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  // NOTE another option is to use NavigationRail
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: TabBar(
                        labelColor: Theme.of(context).primaryColor,
                        controller: tabPage.controller,
                        tabs: [
                          ...navMenu.map((e) => GestureDetector(
                                child: Tab(
                                  height: double.infinity,
                                  child: RotatedBox(
                                    quarterTurns: -1,
                                    child: Text(e),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
            )
          : null,
      appBar: const TopBar(),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     scale: 7,
        //     fit: BoxFit.none,
        //     image: AssetImage("assets/images/back.png"),
        //     repeat: ImageRepeat.repeat,
        //   ),
        // ),
        child: ResponsiveLayout(
          mobileLayout: MobileLayout(
            child: TabBarView(
              controller: tabPage.controller,
              children: [
                for (final stack in tabPage.stacks)
                  PageStackNavigator(stack: stack)
              ],
            ),
          ),
          desktopLayout: DesktopLayout(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabPage.controller,
              children: [
                for (final stack in tabPage.stacks)
                  PageStackNavigator(stack: stack)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
