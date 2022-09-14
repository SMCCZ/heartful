import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '/views/screens/initilization_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'localization/translations.dart';

void main() async {
  setPathUrlStrategy();
  await GetStorage.init();
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
       translations: AppTranslation(),
      locale: const Locale("hi", "IN"),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitilizationScreen(),
    );
  }
}
//https://www.figma.com/file/KtzJNeAjzAmcvbRfRcOR2u/BonVoyage---Travel-Planner-(Community)?node-id=0%3A1

//https://api.disneyapi.dev/characters 
