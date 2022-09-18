import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n\n'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: country.toUpperCase(),
                  style: TextStyle(
                    color: kPrimaryColor.withOpacity(0.5),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(color: kPrimaryColor, fontSize: 20),
          )
        ],
      ),
    );
  }
}
