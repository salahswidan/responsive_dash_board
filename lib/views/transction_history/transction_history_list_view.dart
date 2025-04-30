import 'package:flutter/material.dart';
import '../../models/transction_model.dart';
import 'transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});


     static const items = [
   TransctionModel(title: "Payment Received", date: "13 Apr 2025", amount: "\$200.0", isWithdrawal: false),
   TransctionModel(title: "Payment Sent", date: "12 Apr 2025", amount: "\$150.0", isWithdrawal: true),
   TransctionModel(title: "Payment Received", date: "11 Apr 2025", amount: "\$300.0", isWithdrawal: false),
  ];
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransctionItem(transctionModel: items[index]);
      }, itemCount: items.length,);  
  }
}
