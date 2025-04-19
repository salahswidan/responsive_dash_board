import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/all_expensess/all_expenses.dart';
import 'package:responsive_dash_board/views/drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2, 
          child: Column(
            children: [
              Expanded(child: AllExpenses()),
            ],
          ),
        ),
      ],
    );
  }
}
