import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final icon;
  final title;
  final onTap;
  MenuTile({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      iconColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontFamily: 'Open_Sans'),
      ),
      onTap: onTap,
    );
  }
}
