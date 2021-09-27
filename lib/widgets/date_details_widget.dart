import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableWidget.dart';
import '../constants/reusable_constants.dart';

Expanded buildExpandedGift(
  BuildContext context,
  String url,
  String giftLabel,
  String giftDetails,
  String price,
) {
  return Expanded(
    child: Column(
      children: <Widget>[
        Container(
          height: 80,
          child: Image.asset(url),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              giftLabel,
              style: TextStyle(fontSize: 10),
            ),
            GestureDetector(
              onTap: () {
                buildCustomDialog(context, url, giftLabel, giftDetails, price);
              },
              child: FaIcon(
                FontAwesomeIcons.questionCircle,
                size: 13,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Future buildCustomDialog(
  BuildContext context,
  String url,
  String giftLabel,
  String giftDetails,
  String price,
) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: 400,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    height: 150,
                    child: Image.asset(url),
                  ),
                  Text(
                    '$giftLabel' + ' $price🍎',
                    style: kGeneralTextStyle,
                  ),
                  Text(
                    giftDetails,
                    style: kGeneralTextStyle,
                  ),
                  SizedBox(
                    width: 200.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "關閉",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: const Color(0XFFEF2561),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}

Stack buildPostPicture(String urlPost, var context) {
  return Stack(
    children: [
      Container(
        height: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(urlPost),
          ),
        ),
      ),
      Positioned(
        top: 40,
        left: 10,
        child: returnButton(),
      ),
      Positioned(
        bottom: 20,
        right: 20,
        child: FaIcon(
          FontAwesomeIcons.checkCircle,
          size: 20,
          color: Color(0XFFEF2561).withOpacity(0.7),
        ),
      ),
    ],
  );
}

class verticalDeviderWithContainer extends StatelessWidget {
  const verticalDeviderWithContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 1,
      child: VerticalDivider(
        color: Colors.black,
      ),
    );
  }
}

class expandedIcon extends StatelessWidget {
  final IconData iconData;

  final String theme;
  expandedIcon({this.iconData, this.theme});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            size: 30,
            color: Colors.grey[800],
          ),
          SizedBox(
            height: 5,
          ),
          Text(theme),
        ],
      ),
    );
  }
}
