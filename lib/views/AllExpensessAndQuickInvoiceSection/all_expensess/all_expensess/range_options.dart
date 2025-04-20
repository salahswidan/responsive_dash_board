
import 'package:flutter/material.dart';

import '../../../../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffF1F1F1), width: 1),
            borderRadius: BorderRadius.circular(12),
          )),
      child: Row(
        children: [
          Text("Monthly", style: AppStyles.styleMedium16(context)),
          const SizedBox(
            width: 18,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
