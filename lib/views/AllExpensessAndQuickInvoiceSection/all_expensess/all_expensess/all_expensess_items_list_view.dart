import 'package:flutter/material.dart';

import '../../../../models/all_expensess_item_model.dart';
import '../../../../utils/app_images.dart';
import 'all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = [
    AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "Jan 2023",
      price: r"$20,500",
    ),
    AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "Jan 2023",
      price: r"$20,500",
    ),
    AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "Jan 2023",
      price: r"$20,500",
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map(
      (e) {
        final index = e.key;
        final item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                    isSelected: selectedIndex == index, itemModel: item),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensessItem(
                  isSelected: selectedIndex == index, itemModel: item),
            ),
          );
        }
      },
    ).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
