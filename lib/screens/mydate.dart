import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';
import '../constants/reusable_constants.dart';
import '../widgets/my_date_widgets.dart';

class MyDate extends StatelessWidget {
  int selectedItemIndex = 0;
  bool menuVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          buildHomePageAppBar(
            menuVisibility: menuVisibility,
            whichPage: 'myDate',
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                dateCard(
                  '運動',
                  '今天天氣真好，出來走走?',
                  Icons.accessibility,
                  kThemeColor,
                  50,
                ),
                SizedBox(
                  height: 25,
                ),
                dateCard(
                  '逛街',
                  '想買包包嗎？我買給妳>_<',
                  Icons.shopping_cart,
                  kThemeColor,
                  50,
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildAddEventButton(),
      bottomNavigationBar: buildNavigationHero(context, selectedItemIndex),
    );
  }
}
