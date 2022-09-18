import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  final VoidCallback press;
  final String image;
  const FeaturePlantCard({
    Key? key,
     required this.press, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 180,
        width: size.width*0.7,
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
            ),
        ),
      ),
    );
  }
}