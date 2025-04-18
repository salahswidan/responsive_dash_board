import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsetsDirectional.all(14),
          decoration: ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            )),
      ],
    );
  }
}
