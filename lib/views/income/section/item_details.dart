
import 'package:flutter/material.dart';

import '../../../models/item_detail_model.dart';
import '../../../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            ShapeDecoration(color: itemDetailModel.color, shape: OvalBorder()),
      ),
      title: Text(
        itemDetailModel.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Text(
        itemDetailModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
