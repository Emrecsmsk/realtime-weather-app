import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:realtimeweather/controller/controller.dart';
import 'package:realtimeweather/mixin/lottie/lottie_mixin.dart';
import 'package:realtimeweather/utility/theme/darkTheme.dart';
import 'package:realtimeweather/utility/theme/lightTheme.dart';
import 'package:realtimeweather/widgets/change_theme_button.dart';
import 'package:realtimeweather/widgets/search_field.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with LottieMixin, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = Controller();
  }

  late Controller controller;

  late TextEditingController _formController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Expanded(
            child: Get.isDarkMode
                ? Lottie.asset(darkTheme)
                : Lottie.asset(lightTheme),
          ),
          Positioned.fill(
              top: 60,
              child: Text(
                'title'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              )),
          Positioned(top: 100, child: ChangeThemeButton()),
          Positioned.fill(
              top: MediaQuery.of(context).viewInsets.bottom == 0
                  ? MediaQuery.of(context).size.height * 0.66
                  : MediaQuery.of(context).viewInsets.bottom + 40,
              child: SearchField())
        ],
      ),
    );
  }
}
