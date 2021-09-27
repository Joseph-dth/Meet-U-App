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
          Expanded(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
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
                          '約會對象： ' + '香香',
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
                                '想跟我約會嗎？ 快上 Meet You 跟我一起玩吧>_<',
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '見面禮：     ',
                              style: kGeneralTextStyle,
                            ),
                            // Container(
                            //   width: MediaQuery.of(context).size.width * 0.15,
                            //   child: Stack(
                            //     children: <Widget>[
                            //       Text('200 ', style: kGeneralTextStyle),
                            //       Positioned(
                            //         right: 0,
                            //         bottom: -3,
                            //         child: Text(
                            //           '🍎',
                            //           style: TextStyle(fontSize: 18),
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                          ],
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
                              'assets/images/SantaWithTree.png',
                              '聖誕老公公與樹 ',
                              '當聖誕老公公現身時，願望都將實現',
                              '600',
                            ),
                            buildExpandedGift(
                              context,
                              'assets/images/SnowmanInCrystal.png',
                              '水晶球中的雪人 ',
                              '他靜靜地注視著玻璃外的世界，過著永恆的寒冬',
                              '1000',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 160,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingRectangularButton(
        onPress: () {
          Navigator.pop(context);
        },
        label: '私訊邀請',
      ),
    );
  }
}
