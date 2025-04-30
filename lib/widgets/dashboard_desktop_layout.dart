import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/card/my_card.dart';
import 'package:responsive_dash_board/views/card/my_card_page_view.dart';
import 'package:responsive_dash_board/views/drawer/custom_drawer.dart';
import 'package:responsive_dash_board/views/income/income_section.dart';
import 'package:responsive_dash_board/views/transction_history/transction_history.dart';
import '../views/AllExpensessAndQuickInvoiceSection/all_expensess/all_expensess_and_quick_Invoice_section.dart';
import '../views/card/custom_dot.dart';
import '../views/card/dots_indicator.dart';
import '../views/card/section/my_card_section.dart';
import '../views/transction_history/section/my_card_and_transction_section.dart';

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
        SizedBox(
          width: 24,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
