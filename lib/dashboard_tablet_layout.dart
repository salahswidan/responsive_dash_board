import 'package:flutter/material.dart';
import 'dashboard_mobile_layout.dart';
import 'views/drawer/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: DashBoardMobileLayout(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}