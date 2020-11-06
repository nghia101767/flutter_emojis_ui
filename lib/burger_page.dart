import 'package:flutter/material.dart';
import 'utils/extensions.dart';
import './utils/text.dart';

class BurgerPage extends StatefulWidget {
  BurgerPage(
      {Key key, this.heroTag, this.foodName, this.pricePerItem, this.image})
      : super(key: key);
  final String heroTag;
  final String foodName;
  final double pricePerItem;
  final String image;
  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  int numberOfItems = 1;
  _adjustNumberOfItems(value) {
    setState(() {
      numberOfItems += value;
      if (numberOfItems < 1) {
        numberOfItems = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        buildHeader().toPadOnly(top: 15, left: 15, right: 15),
        SizedBox(height: 20),
        TextHeader(text: "SUPER", fontWeight: FontWeight.bold)
            .toPadOnly(left: 15),
        TextHeader(text: "HAMBURG", fontWeight: FontWeight.bold)
            .toPadOnly(left: 15),
        SizedBox(height: 40),
        buildImageHeader().toPadOnly(left: 15),
        SizedBox(height: 20),
        buildAddToCard().toPadOnly(left: 15),
        SizedBox(height: 20),
        TextMedium(text: "Featured", fontWeight: FontWeight.bold)
            .toPadOnly(left: 15),
      ]),
    );
  }

  Row buildAddToCard() {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      TextHeader(
          text: "\$${widget.pricePerItem * numberOfItems}",
          color: Colors.black54),
      SizedBox(width: 50),
      Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xBBFF0000),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: 10.toCircularRadius(),
                  color: Color(0xFFFFFFFF)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                IconButton(
                    icon:
                        Icon(Icons.remove, size: 16, color: Color(0xFFFF0000)),
                    onPressed: () {
                      _adjustNumberOfItems(-1);
                    }),
                TextNormal(text: "$numberOfItems", color: Color(0xFFFF0000))
                    .toPadOnly(top: 3),
                IconButton(
                    icon: Icon(Icons.add, size: 16, color: Color(0xFFFF0000)),
                    onPressed: () {
                      _adjustNumberOfItems(1);
                    }),
              ]),
            ),
            SizedBox(width: 8),
            TextNormal(text: "Add to card", color: Color(0xFFFFFFFF)),
          ],
        ),
      ).toExpanded(),
    ]);
  }

  Row buildImageHeader() {
    return Row(children: [
      Hero(
        tag: widget.heroTag,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(widget.image).image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(width: 30),
      Container(
        width: 100,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: 12.toCircularRadius(),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFFCCCC),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border, color: Color(0xFFFF0000)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: 12.toCircularRadius(),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFFCCCC),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.timelapse, color: Color(0xFFFF0000)),
              ),
            ),
          ],
        ),
      )
    ]);
  }

  Widget buildHeader() {
    return Row(children: [
      IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      Spacer(),
      Container(
        width: 50,
        height: 50,
        decoration:
            BoxDecoration(borderRadius: 25.toCircularRadius(), boxShadow: [
          BoxShadow(
            color: Color(
              0xFFFF9092,
            ),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 3),
          )
        ]),
        child: Stack(children: [
          IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Color(0xFFFFFFFF),
                    size: 28,
                  ),
                  onPressed: () {})
              .toPadOnly(left: 4, top: 5),
          Positioned(
            child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                    borderRadius: 10.toCircularRadius(),
                    color: Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF817878),
                        blurRadius: 3,
                        spreadRadius: 1,
                      )
                    ]),
                child:
                    TextTiny(text: "4", color: Color(0xFFFF0000)).toCenter()),
            right: 5,
            top: 5,
          ),
        ]),
      ),
    ]);
  }
}
