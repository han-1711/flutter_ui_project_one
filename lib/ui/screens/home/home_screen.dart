import 'package:flutter/material.dart';
import 'package:flutter_ui_project_one/constant/const.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      // title: Text(
      //   "Task Manager",
      //   style: TextStyle(color: kFont),
      // ),
      elevation: 0,
      leading: Builder(builder: (context) {
        return IconButton(
          color: kFont,
          icon: Icon(Icons.menu),
          onPressed: () {},
        );
      }),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: kFont,
          ),
        ),
      ],
    );
  }
}
