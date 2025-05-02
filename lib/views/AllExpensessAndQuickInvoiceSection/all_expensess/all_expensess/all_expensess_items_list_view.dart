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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
                isSelected: selectedIndex == 0, itemModel: items[0]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
                isSelected: selectedIndex == 1, itemModel: items[1]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
                isSelected: selectedIndex == 2, itemModel: items[2]),
          ),
        ),
      ],
    );
    // return Row(
    //     children: items.asMap().entries.map(
    //   (e) {
    //     final index = e.key;
    //     final item = e.value;
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(index);
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //           child: AllExpensessItem(
    //               isSelected: selectedIndex == index, itemModel: item),
    //         ),
    //       ),
    //     );
    //   },
    // ).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
