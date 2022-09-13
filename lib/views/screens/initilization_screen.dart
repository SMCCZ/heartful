import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heartful/controllers/global_controller.dart';
import '/views/screens/home_screen.dart';

class InitilizationScreen extends StatelessWidget {
  const InitilizationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    GlobalController gc = Get.put(GlobalController());
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ...List.generate(
                gc.tabData.length,
                (index) => AppButton(
                  onTap: () {
                    gc.selectedtabIndex.value = index;
                  },
                  isSelected: gc.selectedtabIndex.value == index,
                  child: Text(
                    gc.tabData[index].tr,
                    style: theme.textTheme.button!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: gc.screens[gc.selectedtabIndex.value],
      );
    });
  }
}

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  final bool isSelected;
  const AppButton({
    Key? key,
    this.onTap,
    required this.child,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: isSelected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2.0,
                ),
              )
            : null,
        child: child,
      ),
    );
  }
}
