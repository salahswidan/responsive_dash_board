import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/resource/adaptive_layout.dart';
import 'package:responsive_dash_board/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'drawer/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ))
          : null,
      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? const Drawer(
              child: CustomDrawer(),
            )
          : null,
      backgroundColor: Color(0xff7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
