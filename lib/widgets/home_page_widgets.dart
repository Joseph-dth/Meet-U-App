import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/date_details.dart';

Container buildPostSection(
  String urlPost,
  String urlProfilePhoto,
  var context,
  String theme,
  String time,
  String gift,
  String detail,
) {
  return Container(
    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.015),
    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.1),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DateDetails(
                    urlProfilePhoto: urlProfilePhoto,
                    time: time,
                    detail: detail,
                    gift: gift,
                    theme: theme),
              ),
            );
          },
          child: buildPostPicture(urlPost, context),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        buildPostFirstRow(urlProfilePhoto, theme, time, gift, detail, context),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
      ],
    ),
  );
}

Row buildPostFirstRow(
  String urlProfilePhoto,
  String theme,
  String time,
  String gift,
  String detail,
  var context,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                theme,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.0225,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.005,
                    top: MediaQuery.of(context).size.height * 0.015),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                    Text(
                      detail,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                    Text(
                      "\$" + gift,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      Icon(Icons.more_vert)
    ],
  );
}

Container buildStoryAvatar(String url) {
  return Container(
    margin: EdgeInsets.only(left: 18),
    height: 60,
    width: 60,
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: Colors.red),
    child: CircleAvatar(
      radius: 18,
      backgroundImage: NetworkImage(url),
    ),
  );
}

Stack buildPostPicture(String urlPost, var context) {
  return Stack(
    children: [
      Container(
        height: MediaQuery.of(context).size.width - 70,
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

//          child: Container(
//            child: Center(
//              child: Stack(
//                alignment: Alignment.center,
//                children: [
//                  Icon(
//                    Icons.favorite,
//                    size: 50,
//                    color: Colors.pink.withOpacity(0.7),
//                  ),
//                  Positioned(
//                    top: 13,
//                    child: Text(
//                      "500",
//                      style: TextStyle(fontSize: 16, color: Colors.white),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
