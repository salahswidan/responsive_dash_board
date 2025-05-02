import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/card_background.png"),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0XFF4DB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                left: 31,
                right: 42,
                top: 16,
              ),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle:
                  Text("Syah Bandi", style: AppStyles.styleMedium20(context)),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  "**** **** **** 1234",
                  style: AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white),
                ),
                Text(
                  "12/20 - 124",
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
              ]),
            ),
            const Flexible(
              child: SizedBox(
                height: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
