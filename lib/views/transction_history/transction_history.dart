import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/transction_history/transction_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const  TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        TransctionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          "13 Apr 2025",
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        SizedBox(height: 16,),
        TransctionHistoryListView(),
      ],
    );
  }
}

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History", style: AppStyles.styleSemiBold20(context)),
        Text(
          "See All",
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
