import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/drawer/custom_drawer.dart';
import 'package:responsive_dash_board/views/income/income_section.dart';
import 'package:responsive_dash_board/views/transction_history/section/my_card_and_transction_section.dart';
import 'views/AllExpensessAndQuickInvoiceSection/all_expensess/all_expensess_and_quick_Invoice_section.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top:  40.0),
            child: AllExpensessAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            MyCardAndTransctionSection(),
            SizedBox(
              height: 24,
            ),
            Expanded(child: IncomeSection()),
          ],
        )),
      ],
    );
  }
}
