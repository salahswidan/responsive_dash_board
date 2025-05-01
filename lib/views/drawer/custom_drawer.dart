import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/views/drawer/active_and_inactive.dart';
import 'package:responsive_dash_board/views/drawer/drawer_item.dart';
import 'package:responsive_dash_board/views/drawer/user_info_list_tile.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_images.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(image: Assets.imagesAvatar3, title: 'John Doe', subTitle: 'Admin@gmail.com'),),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'Settings system',
                  image: Assets.imagesSettings,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'Logout account',
                  image: Assets.imagesLogout,
                )),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
