import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/AllExpensessAndQuickInvoiceSection/all_expensess/quick_invoice/title_text_field.dart';

import '../../../../../resource/custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer Name', hint: 'Enter Customer Name')),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Enter Customer Email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item Name', hint: 'Enter Customer Name')),
            const SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextField(title: 'Item Mount', hint: 'USD')),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              textColor: Color(0xff4DB7F2),
              backgroundColor: Colors.transparent,
            )),
            const SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton()),
          ],
        )
      ],
    );
  }
}
