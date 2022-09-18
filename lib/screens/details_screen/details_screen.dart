import 'package:flutter/material.dart';
import 'package:planet_app_ui/constants.dart';
import 'components/title_and_price.dart';

import 'components/image_and_icon.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIcons(size: size),
            const TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  height: 70,
                  minWidth: size.width/2,
                  color: kPrimaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 70,
                    child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
