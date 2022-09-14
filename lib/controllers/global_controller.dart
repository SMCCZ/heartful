import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:heartful/views/screens/home_screen.dart';
import 'package:http/http.dart';

import '../localization/app_text.dart';

class GlobalController extends GetxController {
  var selectedtabIndex = 0.obs;
  var screens = <Widget>[
    const HomeScreen(),
    Container(),
    const HomeScreen(),
    Container(),
    const HomeScreen(),
    Container(),
    Container(),
  ];
  var tabData = [
    AppTexts.destination,
    AppTexts.abroad,
    AppTexts.tourism,
    AppTexts.notes,
    AppTexts.itinerary,
    AppTexts.membersOnly,
  ];
  @override
  void onInit() {
    getDisneyCharacters();
    super.onInit();
  }

  getDisneyCharacters() async {
    var url = Uri.parse("https://api.disneyapi.dev/characters");
    var response = await get(url);
    var data = jsonDecode(response.body);
    //print(data);
  }
}
