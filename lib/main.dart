import 'package:flutter/material.dart';
import 'package:social_media_photographers/screens/home.dart';
import './screens/profile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        ProfilPage.route: (context) => ProfilPage(),
      },
    ),
  );
}
