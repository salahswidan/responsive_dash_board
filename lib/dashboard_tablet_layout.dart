import 'package:flutter/material.dart';

import 'views/AllExpensessAndQuickInvoiceSection/all_expensess/all_expensess_and_quick_Invoice_section.dart';
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
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
