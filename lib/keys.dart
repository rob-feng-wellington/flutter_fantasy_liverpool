import 'package:flutter/widgets.dart';

class ArchKeys {
  // Home Screens
  static const homeScreen = Key('__homeScreen__');

  // Plays
  static const playerList = Key('__playerList__');
  static const playersLoading = Key('__playsLoading__');
  static final playerItem = (String id) => Key('PlayerItem__$id');
  static final playerItemTask = (String id) => Key('PlayerItem__${id}__Task');
}