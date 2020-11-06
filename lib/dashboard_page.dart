import 'package:emojis_ui/burger_page.dart';
import 'package:emojis_ui/foodtabs.dart';
import 'package:emojis_ui/utils/text.dart';
import 'package:flutter/material.dart';
import 'utils/extensions.dart';

class DashBoardPage extends StatefulWidget {
  DashBoardPage({Key key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildHeader(),
          TextHeader(text: "SEARCH FOR", fontWeight: FontWeight.bold)
              .toPadOnly(left: 15),
          TextHeader(text: "RECIPES", fontWeight: FontWeight.bold)
              .toPadOnly(left: 15),
          SizedBox(height: 25),
          buildSearchContainer().toPadSymmetric(horizontal: 15),
          SizedBox(height: 15),
          TextMedium(text: "Recommended", color: Colors.black54)
              .toPadSymmetric(horizontal: 15),
          SizedBox(height: 15),
          Container(
            height: 200,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              _buildListItem('Hamburg', 'images/burger.png', '21',
                  Color(0xFFFFCB90), Color(0xFFE48424)),
              _buildListItem('Chips', 'images/fries.png', '15',
                  Color(0xFF5E8CC7), Color(0xFF2C43AA)),
              _buildListItem('Donuts', 'images/doughnut.png', '15',
                  Color(0xFF90FFED), Color(0xFF24E444)),
              _buildListItem('Hamburg2', 'images/burger.png', '21',
                  Color(0xFFFFCB90), Color(0xFFE48424)),
            ]),
          ),
          SizedBox(height: 15),
          TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              unselectedLabelStyle:
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              tabs: [
                Tab(child: Text("FEATURED")),
                Tab(child: Text("COMBO")),
                Tab(child: Text("FAVORITES")),
                Tab(child: Text("RECOMMENDED")),
                Tab(child: Text("RECOMMENDED")),
                Tab(child: Text("RECOMMENDED")),
                Tab(child: Text("RECOMMENDED")),
                Tab(child: Text("RECOMMENDED")),
                Tab(child: Text("RECOMMENDED")),
                Tab(child: Text("RECOMMENDED")),
              ]).toPadOnly(left: 15),
          Container(
              height: MediaQuery.of(context).size.height - 450,
              child: TabBarView(controller: tabController, children: [
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
              ])),
        ],
      ),
    );
  }

  Widget _buildListItem(String foodName, String image, String price,
      Color bgColor, Color textColor) {
    return InkWell(
      onTap: () => {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, anim1, anim2) {
              return BurgerPage(
                heroTag: foodName,
                foodName: foodName,
                pricePerItem: double.parse(price),
                image: image,
              );
            },
          ),
        ),
      },
      child: Container(
        width: 150,
        height: 175,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: 15.toCircularRadius(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: foodName,
              child: Container(
                height: 75,
                width: 75,
                child: Image.asset(image, width: 50, height: 50).toCenter(),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
            ),
            SizedBox(height: 10),
            TextMedium(text: foodName, color: textColor),
            TextMedium(text: "\$ $price", color: textColor),
          ],
        ),
      ),
    ).toPadOnly(left: 15);
  }

  Widget buildSearchContainer() {
    return Container(
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 14),
          border: InputBorder.none,
          fillColor: Colors.grey.withOpacity(0.5),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlueAccent.withOpacity(0.3),
                blurRadius: 6,
                spreadRadius: 4,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Image.asset("images/tuxedo.png"),
        ),
      ]),
    );
  }
}
