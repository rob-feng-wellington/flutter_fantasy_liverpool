import 'dart:async';
import 'dart:core';

import './entities/player_entity.dart';

abstract class AppRepository {
  Future<List<PlayerEntity>> loadSquad();

  Future saveSquad(List<PlayerEntity> players);
}
