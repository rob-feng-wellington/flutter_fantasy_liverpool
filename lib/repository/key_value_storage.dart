import 'dart:convert';

import 'package:key_value_store/key_value_store.dart';
import 'package:my_app/repository/core_repository.dart';

import 'entities/player_entity.dart';

class KeyValueStorage implements AppRepository {
  final String key;
  final KeyValueStore store;
  final JsonCodec codec;

  const KeyValueStorage(this.key, this.store, [this.codec = json]);

  @override
  Future<List<PlayerEntity>> loadSquad() async {
    return codec
          .decode(store.getString(key))['squad']
                    .cast<Map<String, Object>>()
                    .map<PlayerEntity>(PlayerEntity.fromJson)
                    .toList(growable: false);
  }

  @override
  Future<bool> saveSquad(List<PlayerEntity> squad) {
    return store.setString(
      key,
      codec.encode({
        'squad': squad.map((player) => player.toJson()).toList()
      })
    );
  }

}