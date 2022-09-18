import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).viewPadding.top;
    return Container(
      height: size.height * 0.8,
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: statusBarHeight + kDefaultPadding,
                bottom: kDefaultPadding,
              ),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/back_arrow.svg',
                    ),
                  ),
                  const Spacer(),
                  const IconCard(icon: "assets/icons/sun.svg"),
                  const IconCard(icon: "assets/icons/icon_2.svg"),
                  const IconCard(icon: "assets/icons/icon_3.svg"),
                  const IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.3),),
                ],
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                    image: AssetImage(
                      'assets/images/img.png',
                    ),),),
          ),
        ],
      ),
    );
  }
}