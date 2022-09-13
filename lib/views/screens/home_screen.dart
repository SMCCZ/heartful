import 'package:flutter/material.dart';
import 'package:heartful/constants/asset_image.dart';
import 'package:heartful/views/widgets/restaurant_card.dart';
import 'package:heartful/views/widgets/travel_blog_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        controller: ScrollController(initialScrollOffset: 0.5),
        children: [
          Stack(
            children: [
              Image.asset(
                KAssetsImage.bannerStars,
                width: width,
                fit: BoxFit.fitWidth,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "With VR The world is just in front of you.",
                  style: theme.textTheme.headline5!.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
            alignment: Alignment.center,
            child: SelectableText(
              "台南必去推薦",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
          ),
          Center(
            child: Wrap(
              children: [
                ...List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () {},
                    child: const RestaurantCard(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
            alignment: Alignment.center,
            child: SelectableText(
              "台南必去推薦",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
            alignment: Alignment.center,
            child: SelectableText(
              "看看其他人都去倫敦哪裡玩吧～",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: const Color(0xff939393)),
            ),
          ),
          Center(
            child: Wrap(
              children: [
                ...List.generate(
                  102,
                  (index) => GestureDetector(
                    onTap: () {},
                    child: const TravelBlogCard(),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  4,
                  (index) => InkWell(
                    child: Text(
                      "${index + 1}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
