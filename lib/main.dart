import 'package:emojis_ui/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoardPage(),
      theme: ThemeData(fontFamily: "Nunito"),
      debugShowCheckedModeBanner: false,
    );
  }
}
