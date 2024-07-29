import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class SpotifyVM extends BaseViewModel {
  TextStyle mediumText = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18);
  TextStyle smallText = const TextStyle(
      color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold);

  Color whiteColor = Colors.white;

  IconData notificationIcon = Icons.notification_add;
  IconData timeIcon = Icons.watch_later_outlined;
  IconData settingIcon = Icons.settings;
}
