abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get unions => "$basePath/ic_unions.svg";

  String get arrow => "$basePath/ic_arrow.svg";

  String get facebook => "$basePath/ic_facebook.svg";

  String get google => "$basePath/ic_google.svg";

  String get pinterest => "$basePath/ic_pinterest.svg";

  String get vkontakte => "$basePath/ic_vkontakte.svg";

  String get apple => "$basePath/ic_apple.svg";

  String get telegram => "$basePath/ic_telegram.svg";

  String get unseen => "$basePath/ic_unseen.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get bgSubscripotion => "$basePath/bg_subsctip.png";
}
