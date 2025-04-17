import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Salah Swidan',
              subtitle: 'salahswidan@gmailcom'),
          const SizedBox(
            height: 8,
          ),
          DrawerItemsListView()
        ],
      ),
    );
  }
}
