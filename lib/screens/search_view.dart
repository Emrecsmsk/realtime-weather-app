import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:realtimeweather/controller/theme_controller.dart';
import 'package:realtimeweather/mixin/lottie/lottie_mixin.dart';
import 'package:realtimeweather/widgets/weather_view.dart';
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
    themeController = Get.put(ThemeController());
  }

  late ThemeController themeController;

  late TextEditingController _formController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          _background(),
          _title(context),
          _changeThemeButton(context),
          Positioned.fill(
              top: MediaQuery.of(context).viewInsets.bottom == 0
                  ? MediaQuery.of(context).size.height * 0.66
                  : MediaQuery.of(context).viewInsets.bottom + 40,
              child: SearchField(showSheet: (() {
                showModalBottomSheet<void>(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          WeatherView(),
                        ],
                      );
                    });
              })))
        ],
      ),
    );
  }

  Positioned _changeThemeButton(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.52,
        left: MediaQuery.of(context).size.width * 0.7,
        child: SizedBox(width: 120, height: 120, child: ChangeThemeButton()));
  }

  Positioned _title(BuildContext context) {
    return Positioned.fill(
        top: MediaQuery.of(context).size.height * 0.07,
        child: Text(
          'title'.tr,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ));
  }

  Expanded _background() {
    return Expanded(
      child:
          Get.isDarkMode ? Lottie.asset(darkTheme) : Lottie.asset(lightTheme),
    );
  }
}
