import 'dart:async';
import 'package:my_app/repository/entities/player_entity.dart';

import 'core_repository.dart';

class WebClient implements AppRepository {
  final Duration delay;

  const WebClient([this.delay = const Duration(milliseconds: 3000)]);

  @override
  Future<List<PlayerEntity>> loadSquad() async {
    return Future.delayed(
      delay,
      () => [
        PlayerEntity(
          '1',
          'Alisson',
          1,
          'GK'
        ),
        PlayerEntity(
          '2',
          'Clyne',
          2,
          'Defender'
        ),
        PlayerEntity(
          '3',
          'Fabiano',
          3,
          'Midfielder'
        ),
      ]
    );
  }

  @override
  Future<bool> saveSquad(List<PlayerEntity> players) async {
    return Future.value(true);
  }
}