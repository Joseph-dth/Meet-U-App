import 'package:flutter/material.dart';
import '../widgets/date_details_widget.dart';
import '../widgets/reusableWidget.dart';
import '../constants/reusable_constants.dart';

class DateDetails extends StatelessWidget {
  String theme;
  String urlProfilePhoto;
  String time;
  String gift;
  String detail;
  DateDetails(
      {this.theme, this.urlProfilePhoto, this.time, this.gift, this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildPostPicture(urlProfilePhoto, context),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                expandedIcon(
                  theme: theme,
                  iconData: Icons.shopping_cart,
                ),
                verticalDeviderWithContainer(),
                expandedIcon(
                  theme: time,
                  iconData: Icons.watch_later,
                ),
                verticalDeviderWithContainer(),
                expandedIcon(
                  theme: '男生請客',
                  iconData: Icons.attach_money,
                ),
                verticalDeviderWithContainer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '約會對象： ' + 'Bill',
                  style: kGeneralTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '約會地區： ' + '台北市',
                  style: kGeneralTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '約會描述： ',
                      style: kGeneralTextStyle,
                    ),
                    Expanded(
                      child: Text(
                        '今天天氣真好，出來走走吧！',
                        softWrap: true,
                        style: kGeneralTextStyle,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '見面禮： ',
                  style: kGeneralTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildExpandedGift(
                      context,
                      'assets/images/balloonGiftBox.png',
                      '氣球小禮包 ',
                      '一個充滿心意，以氣球點綴的小禮包',
                      '200',
                    ),
                    buildExpandedGift(
                      context,
                      'assets/images/SnowmanInCrystal.png',
                      '水晶球中的雪人 ',
                      '他靜靜地注視著玻璃外的世界，過著永恆的寒冬',
                      '1000',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingRectangularButton(
        onPress: () {
          Navigator.pop(context);
        },
        label: '結束約會',
      ),
    );
  }
}
