import 'package:flutter/material.dart';
import 'package:responsive_dash_board/resource/custom_background_container.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
        ],
      ),
    );
  }
}
