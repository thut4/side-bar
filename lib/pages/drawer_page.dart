import 'package:flutter/material.dart';
import 'package:flutter_menu/content/build_menu.dart';

class NavgationPage extends StatefulWidget {
  const NavgationPage({Key? key}) : super(key: key);

  @override
  State<NavgationPage> createState() => _NavgationPageState();
}

class _NavgationPageState extends State<NavgationPage> {
  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: padding,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'Qwerty',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text(
                'qwerty@mail.com',
                style: TextStyle(fontSize: 14),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://i.pinimg.com/custom_covers/222x/85498161615209203_1636332751.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home,
              onClick: () => selectedItem(context, 4),
            ),
            buildMenuItem(
              text: 'Favourite',
              icon: Icons.favorite,
              onClick: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: 'Share',
              icon: Icons.share,
              onClick: () => selectedItem(context, 1),
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications,
              onClick: () => selectedItem(context, 2),
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: 'Friend',
              icon: Icons.people,
              onClick: () => selectedItem(context, 3),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
            buildMenuItem(text: 'Setting', icon: Icons.settings),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(text: 'Language', icon: Icons.language),
          ],
        ),
      ),
    );
  }
}
