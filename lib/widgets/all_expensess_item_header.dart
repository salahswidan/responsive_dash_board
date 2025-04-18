import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image, this.imageBackground, this.imageColor});

  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsetsDirectional.all(14),
          decoration: ShapeDecoration(
            color: imageBackground ??const Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image,
          colorFilter: ColorFilter.mode(imageColor ??const Color(0xff4EB7F2), BlendMode.srcIn ),
            ),
        ),
        //  const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child:  Icon(
              Icons.arrow_back_ios_new_outlined,
              color:imageColor == null ? Color(0xff064061) : Colors.white,

            )),
      ],
    );
  }
}
