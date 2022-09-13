import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return Container(
      width: 252.7,
      margin:const EdgeInsets.only(left: 17.3,bottom: 17.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/sea_girl.png",
            fit: BoxFit.fitWidth,
            height: 336.94,
          ),
          SelectableText(
            "攝政咖啡 Regency cafe",
            textAlign: TextAlign.center,
            style: theme.textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SelectableText(
            "Lorem ipsum dolor sit amet, con turadip dolor sit amet.",
            textAlign: TextAlign.start,
            style: theme.textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
