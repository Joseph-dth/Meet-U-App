import 'package:flutter/material.dart';

class returnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.keyboard_arrow_left,
        color: Color(0xFFEF2561),
      ),
      iconSize: 50,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class FloatingRectangularButton extends StatelessWidget {
  final Function onPress;
  final String label;
  FloatingRectangularButton({this.onPress, this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: FloatingActionButton(
        backgroundColor: Color(0xFFEF2561),
        onPressed: onPress,
        child: Container(
          child: Text(
            label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
    );
  }
}
