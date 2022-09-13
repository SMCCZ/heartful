import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:heartful/views/screens/home_screen.dart';
import 'package:http/http.dart';

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
    "熱門景點",
    "出國旅遊",
    "台灣旅遊",
    "熱搜遊記",
    "我的行程",
    "會員專區",
    "會員專區",
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
    print(data);
  }
}
