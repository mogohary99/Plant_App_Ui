import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_app_ui/constants.dart';

import 'components/featured_plants.dart';
import 'components/header_with_searchbox.dart';
import 'components/recomend_plants.dart';
import 'components/title_with_morebtn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(
              title: 'Recomended',
              press: () {},
            ),
            RecomendPlants(size: size),
            TitleWithMoreBtn(
              title: 'Featured Plants',
              press: () {},
            ),
            const FeaturedPlants()
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}




