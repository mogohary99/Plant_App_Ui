import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  final String icon;
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      padding: const EdgeInsets.all(kDefaultPadding/2),
      margin: EdgeInsets.symmetric(vertical: size.height *0.03),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.22),
              offset: const Offset(0,15),
              blurRadius: 22,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-15,-15),
              blurRadius: 22,
            ),
          ]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}