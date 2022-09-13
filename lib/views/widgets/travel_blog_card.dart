import 'package:flutter/material.dart';

class TravelBlogCard extends StatelessWidget {
  const TravelBlogCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(left: 17.5, bottom: 17.5),
      width: 266,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/travel_girl.png",
          ),
          SelectableText(
            "看看其他人都去倫敦哪裡玩吧～",
            textAlign: TextAlign.center,
            style: theme.textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              //color: const Color(0xff939393),
            ),
          ),
          SelectableText(
            "看看其他人都去倫敦哪裡玩吧～看看其他人都去倫敦哪裡玩吧～看看其他人都去倫敦哪裡玩吧～看看其他人都去倫敦哪裡玩吧～",
            textAlign: TextAlign.center,
            style: theme.textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: const Color(0xff939393),
            ),
          ),
          
        ],
      ),
    );
  }
}
