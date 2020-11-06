import 'package:emojis_ui/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'utils/extensions.dart';

class FoodTab extends StatefulWidget {
  FoodTab({Key key}) : super(key: key);

  @override
  _FoodTabState createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        _buildListItem('Delicious hot dog', 5.0, '6', 'images/hotdog.png'),
        _buildListItem('Cheese Pizza', 5.0, '12', 'images/pizza.png'),
      ]),
    );
  }

  _buildListItem(String foodName, double rating, String price, String image) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 210,
          child: Row(children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  color: Color(0xFFDCB6EB), borderRadius: 7.toCircularRadius()),
              child: Image.asset(image, width: 50, height: 50).toCenter(),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextNormal(text: foodName),
                SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {},
                  starCount: rating.toInt(),
                  rating: rating,
                  color: Color(0xFFFFD143),
                  borderColor: Color(0xFFFFD143),
                  size: 15.0,
                  spacing: 0.0,
                ),
                Row(
                  children: [
                    TextMedium(text: "\$$price"),
                    SizedBox(width: 5),
                    TextSmall(
                        text: "\$${(int.parse(price) * 1.5)}",
                        decoration: TextDecoration.lineThrough),
                  ],
                )
              ],
            ),
          ]),
        ),
        FloatingActionButton(
          backgroundColor: Color(0xFFFF7D64),
          heroTag: foodName,
          mini: true,
          onPressed: () {},
          child: Icon(Icons.add, color: Colors.white).toCenter(),
        ),
      ],
    ).toPadSymmetric(horizontal: 15, vertical: 15);
  }
}
