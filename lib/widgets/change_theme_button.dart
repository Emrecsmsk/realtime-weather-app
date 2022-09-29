import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:realtimeweather/controller/controller.dart';
import 'package:realtimeweather/mixin/lottie/lottie_mixin.dart';
import 'package:realtimeweather/utility/theme/darkTheme.dart';
import 'package:realtimeweather/utility/theme/lightTheme.dart';

class ChangeThemeButton extends StatefulWidget {
  const ChangeThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}

class _ChangeThemeButtonState extends State<ChangeThemeButton>
    with LottieMixin, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = Controller();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  late Controller controller;
  late AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.changeTheme(
              controller.isDark ? ThemeDark().theme : ThemeLight().theme);
          controller.isDark = !controller.isDark;
          animationController.animateTo(controller.isDark ? 1 : 0.5);
        },
        child: Lottie.asset(changeTheme, controller: animationController));
  }
}
