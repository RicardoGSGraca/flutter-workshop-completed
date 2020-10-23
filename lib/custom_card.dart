import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color background;

  const CustomCard(
      {Key key, @required this.text, @required this.icon, this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: background ?? Colors.white,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
          size: 30,
        ),
        title: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.teal),
        ),
      ),
    );
  }
}
