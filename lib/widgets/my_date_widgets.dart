import 'package:flutter/material.dart';
import '../constants/reusable_constants.dart';

Card dateCard(String label, String details, IconData themeIcon,
    Color themeIconColor, double iconSize) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
//                    side: BorderSide(width: 2, color: kThemeColor),
    ),
    child: InkWell(
      splashColor: kThemeColor.withAlpha(30),
      onTap: () {
        print('Tapping card');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Icon(
                  themeIcon,
                  size: iconSize,
                  color: themeIconColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      details,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Edit tapped');
            },
            child: Icon(
              Icons.edit,
              size: 30,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    ),
  );
}
