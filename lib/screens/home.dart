import 'package:flutter/material.dart';
import '../widgets/home_page_widgets.dart';
import '../widgets/navigation_bar.dart';
import '../constants/reusable_constants.dart';

class HomePage extends StatefulWidget {
  static String route = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItemIndex = 0;
  bool menuVisibility = true;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHomePageAppBar(
              menuVisibility: menuVisibility,
              whichPage: 'searchDate',
            ),
            Expanded(
              child: NotificationListener<ScrollUpdateNotification>(
                child: ListView(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.02,
                      right: MediaQuery.of(context).size.width * 0.02),
                  children: [
                    buildPostSection(
                      "https://fs.mingpao.com/ldy/20191230/s00018/60407a0ce2a3f9fb1a7dc93af9a33012.jpg",
                      "https://fs.mingpao.com/ldy/20191230/s00018/60407a0ce2a3f9fb1a7dc93af9a33012.jpg",
                      context,
                      '逛街',
                      '兩小時',
                      '男生請客 見面禮',
                      '週五晚上',
                    ),
                    buildPostSection(
                      "https://pbs.twimg.com/profile_images/1285576964317691904/BPLE_5KD_400x400.jpg",
                      "https://pbs.twimg.com/profile_images/1285576964317691904/BPLE_5KD_400x400.jpg",
                      context,
                      '逛街',
                      '兩小時',
                      '男生請客 見面禮',
                      '週五晚上',
                    ),
                    buildPostSection(
                      "https://cdn.hk01.com/di/media/images/2772367/org/4e1aace6f29f8b55c04c6de1ee9bce41.jpg/wMdwOJ1uz2SSWuB877heCzIO7T6E-J4xB5pS0geaUtI?v=w1280r16_9",
                      "https://cdn.hk01.com/di/media/images/2772367/org/4e1aace6f29f8b55c04c6de1ee9bce41.jpg/wMdwOJ1uz2SSWuB877heCzIO7T6E-J4xB5pS0geaUtI?v=w1280r16_9",
                      context,
                      '逛街',
                      '兩小時',
                      '男生請客 見面禮',
                      '週五晚上',
                    ),
                  ],
                ),
                onNotification: (notification) {
                  //print(notification.scrollDelta)

                  //List scroll position
                  if ((notification.metrics.pixels > 150.0) &
                      (menuVisibility == true)) {
                    setState(() {
                      menuVisibility = false;
                    });
                  } else if ((notification.metrics.pixels < 100.0) &
                      (menuVisibility == false)) {
                    setState(() {
                      menuVisibility = true;
                    });
                  }
                  return true;
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildAddEventButton(),
      bottomNavigationBar: buildNavigationHero(context, selectedItemIndex),
    );
  }
}
