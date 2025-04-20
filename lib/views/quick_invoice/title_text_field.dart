import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/quick_invoice/custom_text_field.dart';
import '../../utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Customer Name",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
