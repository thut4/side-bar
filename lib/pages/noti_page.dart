import 'package:flutter/material.dart';
import 'package:flutter_menu/pages/drawer_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavgationPage(),
      appBar: AppBar(
        title: const Text('NotificationPage'),
        backgroundColor: Colors.brown,
      ),
    );
  }
}
