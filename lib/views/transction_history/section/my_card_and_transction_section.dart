import 'package:flutter/material.dart';
import 'package:responsive_dash_board/resource/custom_background_container.dart';
import 'package:responsive_dash_board/views/card/section/my_card_section.dart';
import 'package:responsive_dash_board/views/transction_history/transction_history.dart';

class MyCardAndTransctionSection extends StatelessWidget {
  const MyCardAndTransctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransctionHistory(),
        ],
      ),
    );
  }
}
