import 'package:flutter/material.dart';
import 'package:social_media_photographers/screens/mydate.dart';
import '../screens/profile.dart';
import '../screens/home.dart';
import '../screens/date_filter.dart';
import '../constants/reusable_constants.dart';

Hero buildNavigationHero(BuildContext context, int selectedItemIndex) {
  return Hero(
    tag: 'navigation',
    child: Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.04),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: buildNavigation(selectedItemIndex, context),
    ),
  );
}

Container buildAddEventButton() {
  return Container(
    height: 60,
    child: FittedBox(
      child: FloatingActionButton(
        heroTag: "addEventButton",
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35,
        ),
        backgroundColor: Color(0xFFEF2561),
        elevation: 15,
      ),
    ),
  );
}

Row buildNavigation(int selectedItemIndex, var context) {
  return Row(
    children: [
      buildNavBarItem(Icons.home, 0, selectedItemIndex, context),
      buildNavBarItem(Icons.search, 1, selectedItemIndex, context),
      buildNavBarItem(null, -1, selectedItemIndex, context),
      buildNavBarItem(Icons.comment, 2, selectedItemIndex, context),
      buildNavBarItem(Icons.person, 3, selectedItemIndex, context),
    ],
  );
}

Widget buildNavBarItem(
    IconData icon, int index, int selectedItemIndex, var context) {
  return GestureDetector(
    onTap: () {
//        Navigator.of(context).push(MaterialPageRoute(
//            builder: (BuildContext context) =>
//                ProfilPage(url: urlProfilePhoto)));
      if (index == 0) {
        Navigator.pushNamed(context, HomePage.route);
      }
      if (index == 3) {
        Navigator.pushNamed(context, ProfilPage.route);
      }
    },
    child: Container(
      width: MediaQuery.of(context).size.width / 5,
      height: 45,
      child: icon != null
          ? Icon(
              icon,
              size: 25,
              color: index == selectedItemIndex
                  ? Color(0xFFEF2561)
                  : Colors.grey[700],
            )
          : Container(),
    ),
  );
}

class buildHomePageAppBar extends StatelessWidget {
  buildHomePageAppBar({this.menuVisibility, this.whichPage});

  final bool menuVisibility;
  final String whichPage;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'homePageAppBar',
      flightShuttleBuilder: (BuildContext flightContext,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext) =>
          Material(child: toHeroContext.widget),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEF2561),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'MEET YOU',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Visibility(
                      visible: menuVisibility,
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    Visibility(
                      visible: menuVisibility,
                      child: Text(
                        '遇見你的另一半',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.format_align_right,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DateFilter()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: menuVisibility,
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      '尋找約會',
                      style: whichPage == 'searchDate'
                          ? kHomePageWhichPageTextStyleTrue
                          : kHomePageWhichPageTextStyleFalse,
                    ),
                    onPressed: () {
                      if (whichPage != 'searchDate') {
                        Navigator.pop(context);
                      }
                    },
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  FlatButton(
                    child: Text(
                      '我的約會',
                      style: whichPage == 'myDate'
                          ? kHomePageWhichPageTextStyleTrue
                          : kHomePageWhichPageTextStyleFalse,
                    ),
                    onPressed: () {
                      if (whichPage != 'myDate') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyDate()));
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
