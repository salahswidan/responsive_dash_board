import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          AllExpensessItem(
              itemModel: AllExpensessItemModel(
            image: Assets.imagesIncome,
            title: "Income",
            date: "Jan 2023",
            price: r"$20,500",
          ))
        ],
      ),
    );
  }
}
