import 'package:flutter/material.dart';
import 'package:social_media_photographers/screens/home.dart';
import '../widgets/profile_widget.dart';
import '../widgets/navigation_bar.dart';

class ProfilPage extends StatefulWidget {
  final String url =
      "https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2019/05/04/realtime/6258262.jpg&x=0&y=0&sw=0&sh=0&sl=W&fw=1050";
  static String route = 'profile_page';

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int selectedItemIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
                color: Colors.white,
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
                ]),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 20,
                      )
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.url),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Bill",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Taipei, Taiwan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildStatColumn("223k", "Followers"),
                    buildStatColumn("1", "Following"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 8, top: 8),
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 5 / 6,
                children: [
                  buildPictureCard(
                      'https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2019/05/04/realtime/6258262.jpg&x=0&y=0&sw=0&sh=0&sl=W&fw=1050'),
                  buildPictureCard(
                      'https://images.chinatimes.com/newsphoto/2018-08-28/900/20180828004697.jpg'),
                  buildPictureCard(
                      'https://pad.chinatimes.com/action/b/20200307/bbc2b2/img/39896_010380001.306.80792442_2946637048680004_5076972676145217536_N.jpg'),
                  buildPictureCard(
                      'https://www.91pu.com.tw/uploads/151007/34-15100GAIb14.jpg'),
                  buildPictureCard(
                      'https://sportsplanetmag-aws.hmgcdn.com/public/article/atl_20190325161536_204.jpg'),
                  addPictureCard(),
                ],
              ),
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
