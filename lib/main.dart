import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/views/screens/initilization_screen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Heartful',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitilizationScreen(),
    );
  }
}
//https://www.figma.com/file/KtzJNeAjzAmcvbRfRcOR2u/BonVoyage---Travel-Planner-(Community)?node-id=0%3A1

//https://api.disneyapi.dev/characters 
