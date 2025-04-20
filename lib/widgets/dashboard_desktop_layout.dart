import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/drawer/custom_drawer.dart';
import '../views/AllExpensessAndQuickInvoiceSection/all_expensess/all_expensess_and_quick_Invoice_section.dart';

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
          child: AllExpensessAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}
