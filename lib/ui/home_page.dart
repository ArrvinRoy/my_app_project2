import 'package:flutter/material.dart';

import '../services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),

      ///this widget to make content center
      body: Center(
        child: Column(
          ///this line to make content center
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///add button to test trigger notification here
            ElevatedButton(onPressed: () {}, child: Text("Click me")),
            Text("Theme Data", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
        },
        child: Icon(Icons.nightlight_round, size: 20),
      ),
      actions: [Icon(Icons.person, size: 20), SizedBox(width: 20)],
    );
  }
}
