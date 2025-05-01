import 'package:flutter/material.dart';
import 'views/AllExpensessAndQuickInvoiceSection/all_expensess/all_expensess_and_quick_Invoice_section.dart';
import 'views/income/income_section.dart';
import 'views/transction_history/section/my_card_and_transction_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
         
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransctionSection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
