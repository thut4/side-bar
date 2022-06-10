import 'package:flutter/material.dart';
import 'package:flutter_menu/pages/drawer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavgationPage(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Side Menu Bar'),
      ),
      body: Container(),
    );
  }
}
