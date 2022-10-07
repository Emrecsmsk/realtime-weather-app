import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:realtimeweather/controller/theme_controller.dart';
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
    themeController = ThemeController();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  late ThemeController themeController;
  late AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          themeController.isDark = !themeController.isDark;
          Get.changeTheme(
              themeController.isDark ? ThemeDark().theme : ThemeLight().theme);
          animationController.animateTo(themeController.isDark ? 0.5 : 1);
        },
        child: Lottie.asset(changeTheme, controller: animationController));
  }
}
