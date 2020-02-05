import 'package:flutter/material.dart';
import 'package:my_app/keys.dart';

import '../models.dart';

class PlayerItem extends StatelessWidget {
  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final Player player;

  PlayerItem({
    Key key,
    @required this.onDismissed,
    @required this.onTap,
    @required this.player,
  }): super (key: key);

  @override 
  Widget build(BuildContext context) {
    return Dismissible(
      key: ArchKeys.playerItem(player.id),
      onDismissed: onDismissed,
      child: ListTile(
        onTap: onTap,
        title: Text(
          player.name,
          key: ArchKeys.playerItemTask(player.id),
          style: Theme.of(context).textTheme.title
        )
      )
    );
  }
}