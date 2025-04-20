import 'package:flutter/material.dart';

import '../../../../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0XFFAAAAAA),
        ),
        fillColor: Color(0XFFFAFAFA),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0XFFFAFAFA),
          ),
        ),
      ),
    );
  }
}
