import 'package:flutter/material.dart';
import 'package:my_app/widgets/player_item.dart';

import '../keys.dart';
import '../models.dart';

class PlayerList extends StatelessWidget {
  final List<Player> players;
  final bool loading;

  PlayerList({
    @required this.players,
    @required this.loading,
  }) : super(key: ArchKeys.playerList);

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: loading 
        ? Center(
          child: CircularProgressIndicator(
            key: ArchKeys.playersLoading
          )
        ):
        ListView.builder(
          key: ArchKeys.playerList,
          itemBuilder: (BuildContext context, int index) {
            final player = players[index];
            return PlayerItem(
              player: player,
              onDismissed: (direction) {
                  
              },
              onTap: () {
              }
            );
          },
        )
    );
  }
}