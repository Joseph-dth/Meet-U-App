import 'package:flutter/material.dart';
import '../widgets/reusableWidget.dart';

class DateFilter extends StatefulWidget {
  @override
  _DateFilterState createState() => _DateFilterState();
}

class _DateFilterState extends State<DateFilter> {
  int _selectedItemIndex = 0;
  int themeNum = 0;
  int genderNum = 0;
  int timeSection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Color(0xFFEF2561),
                    ),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 40),
                child: ListView(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '約會設定',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '您可以在這裡設定關於約會對象的配對設定',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          '主題',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            buildDateReferencesButton('逛街', 1),
                            buildDateReferencesButton('看電影', 2),
                            buildDateReferencesButton('吃飯', 3),
                            buildDateReferencesButton('小酌', 4),
                          ],
                        ),
                        ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            buildDateReferencesButton('按摩', 5),
                            buildDateReferencesButton('短暫浪漫', 6),
                            buildDateReferencesButton('其他', 7),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          '性別',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            buildDateGenderButton('男', 1),
                            buildDateGenderButton('女', 2),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          '時段',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            buildDateTimeButton('下班後', 1, context),
                            buildDateTimeButton('週末', 2, context),
                            buildDateTimeButton('週五晚上', 3, context),
                          ],
                        ),
                        ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            buildDateTimeButton('平日白天也行啦！', 4, context),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingRectangularButton(
        onPress: () {
          Navigator.pop(context);
        },
        label: '確認變更',
      ),
    );
  }

  RaisedButton buildDateReferencesButton(String label, int specificTheme) {
    return RaisedButton(
      child: Text(
        label,
        style: TextStyle(
          color: themeNum == specificTheme ? Color(0xFFEF2561) : Colors.grey,
        ),
      ),
      onPressed: () {
        setState(() {
          themeNum = specificTheme;
        });
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: themeNum == specificTheme ? Color(0xFFEF2561) : Colors.grey,
        ),
      ),
    );
  }

  RaisedButton buildDateGenderButton(String label, int specificTheme) {
    return RaisedButton(
      child: Text(
        label,
        style: TextStyle(
          color: genderNum == specificTheme ? Color(0xFFEF2561) : Colors.grey,
        ),
      ),
      onPressed: () {
        setState(() {
          genderNum = specificTheme;
        });
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: genderNum == specificTheme ? Color(0xFFEF2561) : Colors.grey,
        ),
      ),
    );
  }

  RaisedButton buildDateTimeButton(
      String label, int specificTheme, var context) {
    return RaisedButton(
      child: Text(
        label,
        style: TextStyle(
          color: timeSection == specificTheme ? Color(0xFFEF2561) : Colors.grey,
        ),
      ),
      onPressed: () {
        setState(() {
          timeSection = specificTheme;
        });
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: timeSection == specificTheme ? Color(0xFFEF2561) : Colors.grey,
        ),
      ),
    );
  }
}
