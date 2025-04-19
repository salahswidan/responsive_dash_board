import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/all_expensess/all_expenses_header.dart';
import 'package:responsive_dash_board/views/all_expensess/all_expensess_items_list_view.dart';

import '../../resource/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
