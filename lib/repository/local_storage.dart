import 'dart:async';
import 'dart:core';
import 'package:meta/meta.dart';
import 'package:my_app/repository/entities/player_entity.dart';
import 'web_client.dart';
import 'core_repository.dart';

class LocalStorageRepository implements AppRepository {
  final AppRepository localStorage;
  final AppRepository webClient;

  const LocalStorageRepository({
    @required this.localStorage,
    this.webClient = const WebClient(),
  });

  @override
  Future<List<PlayerEntity>> loadSquad() async {
    try {
      return await localStorage.loadSquad();
    } catch (e) {
      final squad = await webClient.loadSquad();

      await localStorage.saveSquad(squad);

      return squad;
    }
  }

  @override
  Future saveSquad(List<PlayerEntity> players) {
    return Future.wait<dynamic>([
      localStorage.saveSquad(players),
      webClient.saveSquad(players)
    ]);
  }
} 