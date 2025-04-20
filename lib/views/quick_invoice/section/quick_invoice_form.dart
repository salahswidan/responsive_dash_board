import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/quick_invoice/title_text_field.dart';

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
            Expanded(
                child: TitleTextField(
                    title: 'Item Mount', hint: 'USD')),
          ],
        ),
      ],
    );
  }
}
