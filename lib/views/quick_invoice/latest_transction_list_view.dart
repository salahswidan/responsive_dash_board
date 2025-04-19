import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/views/drawer/user_info_list_tile.dart';

import '../../utils/app_images.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Salah Swidan',
        subTitle: 'salahswidan@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Salah Swidan',
        subTitle: 'salahswidan@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Salah Swidan',
        subTitle: 'salahswidan@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: UserInfoListTile(userInfoModel: items[index]));
        },
      ),
    );
  }
}
