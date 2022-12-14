mixin LottieMixin {
  late String lightTheme = ok(LottieLibrary.lightBackground.name);
  late String darkTheme = ok(LottieLibrary.darkBackground.name);
  late String changeTheme = ok(LottieLibrary.changeTheme.name);
  late String error = ok(LottieLibrary.error.name);

  String ok(lottie) {
    return 'assets/lottie/$lottie.json';
  }
}

enum LottieLibrary { lightBackground, darkBackground, changeTheme, error }
