import 'package:my_app/repository/entities/player_entity.dart';

class AppState {
  bool isLoading;
  List<Player> squad;

  AppState({
    this.isLoading = false,
    this.squad = const []
  });

  factory AppState.loading() => AppState(isLoading: true);

}

class Player {
  String id;
  String name;
  int number;
  String position;

  Player(this.id, this.name, this.number, this.position);

  static Player fromEntity(PlayerEntity entity) {
    return Player(
      entity.id,
      entity.name,
      entity.number,
      entity.position
    );
  }
}