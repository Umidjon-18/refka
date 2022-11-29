abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();

  // ignore: library_private_types_in_public_api
  static _Gifs get gifs => const _Gifs();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get arrowLeft => "$basePath/ic_arrow.svg";

  
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

 
  String get inviteFriend => "$basePath/invite_friend.png";

  
}

class _Gifs extends _AssetsHolder {
  const _Gifs() : super('assets/gifs');

  String get welcome_1_1 => "$basePath/welcome_1_1.gif";
  // String get welcome_1_1_1 => "$basePath/welcome_1_1_1.gif";
  String get welcome_1_2_1 => "$basePath/welcome_1_2_1.gif";
  String get welcome_1_3_1 => "$basePath/welcome_1_3_1.gif";
  String get welcome_1_4_1 => "$basePath/welcome_1_4_1.gif";
}

// class _Videos extends _AssetsHolder {
//   const _Videos() : super('assets/videos');
// }
