import 'package:flutter/material.dart';
import 'package:responsive_dash_board/resource/custom_background_container.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/quick_invoice/custom_text_field.dart';
import 'package:responsive_dash_board/views/quick_invoice/latest_transaction.dart';
import 'package:responsive_dash_board/views/quick_invoice/latest_transction_list_view.dart';

import 'quick_invoice_header.dart';
import 'title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          TitleTextField(
            title: 'Customer Name',
            hint: 'Enter Customer Name',
          ),
        ],
      ),
    );
  }
}
