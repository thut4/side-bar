import 'package:flutter/material.dart';
import 'package:flutter_menu/pages/fav_page.dart';
import 'package:flutter_menu/pages/home_page.dart';
import 'package:flutter_menu/pages/noti_page.dart';
import 'package:flutter_menu/pages/people_page.dart';
import 'package:flutter_menu/pages/share_page.dart';

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClick,
}) {
  const color = Colors.white;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      text,
      style: const TextStyle(color: color),
    ),
    onTap: onClick,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const FavoritePage()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SharePage()));
      break;
    case 2:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const NotificationPage()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const PeoplePage()));
      break;
    default:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
