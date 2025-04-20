import 'package:flutter/material.dart';
import 'package:responsive_dash_board/resource/custom_background_container.dart';
import 'package:responsive_dash_board/views/AllExpensessAndQuickInvoiceSection/all_expensess/quick_invoice/latest_transaction.dart';
import 'package:responsive_dash_board/views/AllExpensessAndQuickInvoiceSection/all_expensess/quick_invoice/section/quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          QuickInvoiceForm(),
        
        ],
      ),
    );
  }
}


