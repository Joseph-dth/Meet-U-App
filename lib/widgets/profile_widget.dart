import 'package:flutter/material.dart';

Container buildPictureCard(String url) {
  return Container(
    height: 10.0,
    width: 10,
    child: Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(url),
            )),
      ),
    ),
  );
}

Container addPictureCard() {
  return Container(
    height: 10.0,
    width: 10,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Icon(
        Icons.add,
        size: 40,
        color: Color(0xFFEF2561),
      ),
    ),
  );
}

Column buildStatColumn(String value, String title) {
  return Column(
    children: [
      Text(
        value,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey[400],
        ),
      ),
    ],
  );
}
