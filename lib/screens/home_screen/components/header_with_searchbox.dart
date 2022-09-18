import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: kDefaultPadding *1.5),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            width: double.infinity,
            padding: const EdgeInsets.only(
              right: kDefaultPadding,
              left: kDefaultPadding,
              bottom: kDefaultPadding + 30,
            ),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text(
                  'Hi Gohary!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 30
                  ),
                ),
                Image.asset('assets/images/logo.png'),
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 54,
              width: double.infinity,
              margin:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.6)
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/search.svg')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}