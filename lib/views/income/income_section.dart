import 'package:flutter/material.dart';
import 'package:responsive_dash_board/resource/custom_background_container.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'section/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
        ],
      ),
    );
  }
}
